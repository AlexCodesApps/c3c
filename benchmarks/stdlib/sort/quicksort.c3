module sort_bench;

import std::sort;

fn void init() @init
{
    set_benchmark_warmup_iterations(5);
    set_benchmark_max_iterations(10_000);
}

fn void quicksort_bench() @benchmark
{
	// test set: 500 numbers between 0 and 99;
	int[] data = {
		71, 28, 2, 13, 62, 10, 54, 78, 63, 86,
		33, 65, 89, 51, 58, 0, 51, 16, 87, 30,
		89, 14, 52, 41, 88, 25, 83, 91, 56, 86,
		14, 64, 76, 18, 39, 24, 79, 62, 34, 58,
		90, 24, 56, 73, 85, 82, 79, 63, 47, 69,
		78, 29, 49, 28, 43, 47, 56, 53, 79, 56,
		19, 63, 29, 52, 71, 93, 61, 46, 30, 11,
		21, 26, 37, 86, 93, 74, 62, 0, 41, 17,
		26, 27, 34, 11, 54, 69, 72, 44, 74, 3,
		61, 62, 80, 90, 3, 82, 16, 12, 28, 1,
		2, 49, 4, 44, 57, 86, 63, 74, 33, 41,
		76, 77, 56, 57, 56, 88, 74, 71, 6, 59,
		40, 42, 94, 55, 21, 17, 17, 63, 21, 83,
		73, 19, 39, 88, 93, 74, 21, 0, 63, 45,
		69, 66, 22, 68, 86, 86, 85, 67, 8, 50,
		23, 98, 64, 80, 64, 36, 40, 30, 73, 36,
		23, 14, 1, 77, 82, 8, 18, 73, 37, 86,
		29, 70, 27, 87, 64, 81, 13, 0, 4, 83,
		90, 17, 71, 66, 38, 39, 54, 22, 86, 18,
		84, 66, 77, 25, 64, 93, 80, 91, 2, 92,
		47, 32, 90, 16, 46, 29, 56, 87, 70, 73,
		89, 41, 5, 54, 93, 63, 16, 39, 71, 84,
		74, 91, 69, 59, 49, 87, 74, 37, 75, 83,
		77, 19, 51, 44, 79, 62, 94, 20, 24, 83,
		37, 70, 57, 32, 93, 8, 29, 11, 7, 92,
		8, 23, 20, 21, 7, 70, 28, 20, 96, 6,
		50, 58, 30, 61, 66, 42, 50, 54, 64, 7,
		10, 53, 63, 44, 16, 39, 83, 73, 3, 29,
		97, 32, 36, 68, 84, 64, 73, 5, 29, 13,
		48, 3, 84, 65, 75, 68, 66, 22, 39, 33,
		39, 24, 27, 85, 18, 34, 3, 63, 32, 9,
		29, 66, 24, 90, 75, 50, 11, 95, 47, 14,
		92, 1, 76, 45, 76, 41, 55, 54, 38, 67,
		43, 40, 5, 61, 97, 11, 61, 24, 92, 24,
		76, 53, 60, 34, 78, 80, 70, 75, 30, 90,
		65, 99, 80, 61, 94, 75, 63, 67, 10, 35,
		23, 42, 31, 48, 14, 68, 84, 14, 79, 1,
		25, 94, 23, 53, 49, 69, 44, 73, 63, 51,
		44, 96, 88, 51, 94, 24, 64, 72, 59, 81,
		73, 93, 14, 35, 9, 53, 25, 48, 50, 88,
		46, 97, 67, 40, 27, 17, 2, 42, 11, 82,
		0, 46, 44, 38, 31, 88, 63, 88, 10, 82,
		77, 61, 24, 39, 27, 33, 10, 91, 69, 22,
		42, 74, 71, 13, 32, 56, 12, 46, 81, 74,
		17, 26, 45, 50, 76, 84, 76, 36, 43, 65,
		81, 64, 0, 49, 70, 11, 76, 19, 60, 55,
		15, 98, 31, 91, 56, 8, 97, 9, 3, 94,
		3, 88, 7, 2, 3, 98, 10, 51, 21, 79,
		99, 3, 8, 76, 52, 13, 40, 90, 85, 15,
		70, 77, 43, 30, 4, 89, 18, 21, 59, 17,
	};
	sort::quicksort(data);
}


