/*
 * Copyright 2015 The Etc2Comp Authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#pragma once

#include "EtcColorFloatRGBA.h"
#include "EtcImage.h"
#include "etctool_global.h"

namespace Etc
{
	class FileHeader;
	class SourceImage;

    class ETCTOOLSHARED_EXPORT File
	{
	public:

		enum class Format
		{
			INFER_FROM_FILE_EXTENSION,
			PKM,
			KTX,
		};

		File(const char *a_pstrFilename, Format a_fileformat, Image::Format a_imageformat,
				unsigned int a_uiSourceWidth, unsigned int a_uiSourceHeight,
        unsigned int a_uiExtendedWidth, unsigned int a_uiExtendedHeight,
        unsigned int a_mipLevels);

		File(const char *a_pstrFilename, Format a_fileformat);
		~File();
		const char *GetFilename(void) { return m_pstrFilename; }

		void Read(const char *a_pstrFilename);
		void Write(void);

    inline unsigned int GetMipLevels(void)
    {
      return m_mipLevels;
    }

		inline unsigned int GetSourceWidth(void)
		{
			return m_uiSourceWidth;
		}

		inline unsigned int GetSourceHeight(void)
		{
			return m_uiSourceHeight;
		}

		inline unsigned int GetExtendedWidth(void)
		{
			return m_uiExtendedWidth;
		}

		inline unsigned int GetExtendedHeight(void)
		{
			return m_uiExtendedHeight;
		}

		inline Image::Format GetImageFormat()
		{
			return m_imageformat;
		}

    inline unsigned int GetEncodingBitsBytes(int level)
		{
      return m_uiEncodingBitsBytes[level];
		}

    inline unsigned char * GetEncodingBits(int level)
		{
      return m_paucEncodingBits[level];
		}
		void UseSingleBlock(int a_iPixelX = -1, int a_iPixelY = -1);

    void AddLevel(int levelIndex, unsigned char *a_paucEncodingBits, unsigned int a_uiEncodingBitsBytes);
	private:

		char *m_pstrFilename;               // includes directory path and file extension
		Format m_fileformat;
		Image::Format m_imageformat;
		FileHeader *m_pheader;
    unsigned char **m_paucEncodingBits;
    unsigned int *m_uiEncodingBitsBytes;
		unsigned int m_uiSourceWidth;
		unsigned int m_uiSourceHeight;
		unsigned int m_uiExtendedWidth;
		unsigned int m_uiExtendedHeight;
    unsigned int m_mipLevels;
	};

}
