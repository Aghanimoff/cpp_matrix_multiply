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


void fillMatrix()
{
    for(int it1 = 0; it1 < first_name_length; it1++)
    {
        for(int it2 = 0; it2 < last_name_length; it2++)
        {
            A[it1][it2] = (last_name_length * ((it1 % 2) + 1) + (middle_name_length * ((it2 % 2) - 1))) / first_name_length;
        }
    }

    for(int it1 = 0; it1 < last_name_length; it1++)
    {
        for(int it2 = 0; it2 < middle_name_length; it2++)
        {
            B[it1][it2] = ((first_name_length * ((it1%2) + 1)) - (middle_name_length * ((it2 % 2) - 1))) / last_name_length;
        }
    }
}

void solveMatrix()
{
    for(int it1 = 0; it1 < first_name_length; it1++)
    {
        for(int it2 = 0; it2 < middle_name_length; it2++)
        {
            for(int it3 = 0; it3 < last_name_length; it3++)
            {
                C[it1][it2] += A[it1][it3]* B[it3][it2];
            }
        }
    }
}

void optimizedSolveMatrix()
{
	for(int it1 = 0; it1 < first_name_length; it1++)
	{
		for(int it2 = 0; it2 < middle_name_length; it2++)
		{
			double s= 0.0;
			for (int it3 = 0; it3 < last_name_length; it3++)
			{
			    s += A[it1][it3]* B[it3][it2];
			}
			C[it1][it2] = s;
		}
	}
}


template <typename T>
void printMatrix(T matrix)
{
    if(typeid (matrix) == typeid (A))
    {
        std::cout<<"A = "<<std::endl;
    }
    else if(typeid (matrix) == typeid (B))
    {
        std::cout<<"B = "<<std::endl;
    }
    else if(typeid (matrix) == typeid (C))
    {
        std::cout<<"C = "<<std::endl;
    }
    for(size_t it1 = 0; it1 < matrix.size(); it1++)
    {
        for(size_t it2 = 0; it2 < matrix[it1].size(); it2++)
        {
            std::cout<<matrix[it1][it2]<<"\t";
        }
        std::cout<<std::endl;
    }
    std::cout<<std::endl;
}

int main(int argc, char* argv[])
{

	auto start_1 = std::chrono::high_resolution_clock::now();
	
	  fillMatrix();
	  printMatrix<std::array<std::array<int, last_name_length>, first_name_length>>(A);
	  printMatrix<std::array<std::array<int, middle_name_length>, last_name_length>>(B);
	  solveMatrix();
	  printMatrix<std::array<std::array<int, middle_name_length>, first_name_length>>(C);
	
	auto end_1 = std::chrono::high_resolution_clock::now();

	auto start_2 = std::chrono::high_resolution_clock::now();
	
	  fillMatrix();
	  printMatrix<std::array<std::array<int, last_name_length>, first_name_length>>(A);
	  printMatrix<std::array<std::array<int, middle_name_length>, last_name_length>>(B);
	  optimizedSolveMatrix();
	  printMatrix<std::array<std::array<int, middle_name_length>, first_name_length>>(C);
	
	auto end_2 = std::chrono::high_resolution_clock::now();
	
	
	std::chrono::duration<float> duration_1 = end_1 - start_1;
	std::cout<<"Without opti process time: " <<duration_1.count()<<"sec."<<std::endl;
	std::chrono::duration<float> duration_2 = end_2 - start_2;
	std::cout<<"Optimisation process time: " <<duration_2.count()<<"sec."<<std::endl;
}
