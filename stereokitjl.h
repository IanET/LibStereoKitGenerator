#if (defined(__clang__) && !defined char16_t)
typedef __CHAR16_TYPE__ char16_t;
#endif

#if (defined(__clang__) && !defined char32_t)
typedef __CHAR32_TYPE__ char32_t;
#endif

#if (defined(__clang__) && !defined uint64_t)
typedef __UINT64_TYPE__ uint64_t;
#endif

#include "StereoKitC/stereokit_ui.h"