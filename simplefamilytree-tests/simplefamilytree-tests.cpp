#include "pch.h"
#include "CppUnitTest.h"

#include "simplefamilytree.h"

using namespace Microsoft::VisualStudio::CppUnitTestFramework;

namespace simplefamilytreetests
{
	TEST_CLASS(simplefamilytreetests)
	{
	public:
		
		TEST_METHOD(TestAtoi)
		{
			Assert::AreEqual(static_cast<DWORD>(0), Atoi(_T("0")));
			Assert::AreEqual(static_cast<DWORD>(1), Atoi(_T("1")));
			Assert::AreEqual(static_cast<DWORD>(101), Atoi(_T("101")));
		}
	};
}
