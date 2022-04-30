#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <iostream>
#include <string>
#include <stdio.h>
#include <array>
#include <locale>
#include <typeinfo>
#include <chrono>

const int last_name_length = 6;
const int first_name_length = 7;
const int middle_name_length = 9;

std::array<std::array<int, last_name_length>, first_name_length> A;
std::array<std::array<int, middle_name_length>, last_name_length> B;
std::array<std::array<int, middle_name_length>, first_name_length> C;

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}


void MainWindow::on_pushButton_clicked()
{
    QString s;
    for(int it1 = 0; it1 < first_name_length; it1++)
    {
        for(int it2 = 0; it2 < last_name_length; it2++)
        {
            A[it1][it2] = (last_name_length * ((it1 % 2) + 1) + (middle_name_length * ((it2 % 2) - 1))) / first_name_length;
            s += QString::number(A[it1][it2]) + " ";
        }
        s += QString::asprintf("\n");
    }
    ui ->laba->setText(s) ;

    QString s2;
    for(int it1 = 0; it1 < last_name_length; it1++)
    {
        for(int it2 = 0; it2 < middle_name_length; it2++)
        {
            B[it1][it2] = ((first_name_length * ((it1%2) + 1)) - (middle_name_length * ((it2 % 2) - 1))) / last_name_length;
            s2 += QString::number(B[it1][it2]) + " ";
        }
        s2 += QString::asprintf("\n");
    }
    ui ->labb->setText(s2) ;


    QString s3;
    for(int it1 = 0; it1 < first_name_length; it1++)
    {
        for(int it2 = 0; it2 < middle_name_length; it2++)
        {
            double s= 0.0;
            for(int it3 = 0; it3 < last_name_length; it3++)
            {
                s += A[it1][it3] * B[it3][it2];
            }
            C[it1][it2] = s;
            s3 += QString::number(C[it1][it2]) + " ";
        }
        s3 += QString::asprintf("\n");
    }
    ui ->labc->setText(s3) ;
}
