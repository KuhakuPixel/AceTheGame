#pragma once
#include <stdlib.h>

/*
 * only for powering an integral type like int,
 * long, size_t and etc
 * TODO: enforce integral constraint through cpp's feature
 * */
template <typename T> T pow_integral(T base, size_t power);
