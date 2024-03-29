// qssl.sip generated by MetaSIP
//
// This file is part of the QtNetwork Python extension module.
//
// Copyright (c) 2015 Riverbank Computing Limited <info@riverbankcomputing.com>
// 
// This file is part of PyQt5.
// 
// This file may be used under the terms of the GNU General Public License
// version 3.0 as published by the Free Software Foundation and appearing in
// the file LICENSE included in the packaging of this file.  Please review the
// following information to ensure the GNU General Public License version 3.0
// requirements will be met: http://www.gnu.org/copyleft/gpl.html.
// 
// If you do not wish to use this file under the terms of the GPL version 3.0
// then you may purchase a commercial license.  For more information contact
// info@riverbankcomputing.com.
// 
// This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
// WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.


%ModuleCode
#include <qssl.h>
%End

%If (PyQt_SSL)

namespace QSsl
{
%TypeHeaderCode
#include <qssl.h>
%End

    enum KeyType
    {
        PrivateKey,
        PublicKey,
    };

    enum EncodingFormat
    {
        Pem,
        Der,
    };

    enum KeyAlgorithm
    {
        Opaque,
        Rsa,
        Dsa,
    };

    enum AlternativeNameEntryType
    {
        EmailEntry,
        DnsEntry,
    };

    enum SslProtocol
    {
        UnknownProtocol,
        SslV3,
        SslV2,
        TlsV1_0,
        TlsV1_1,
        TlsV1_2,
        AnyProtocol,
        TlsV1SslV3,
        SecureProtocols,
    };

    enum SslOption
    {
        SslOptionDisableEmptyFragments,
        SslOptionDisableSessionTickets,
        SslOptionDisableCompression,
        SslOptionDisableServerNameIndication,
        SslOptionDisableLegacyRenegotiation,
%If (Qt_5_2_0 -)
        SslOptionDisableSessionSharing,
%End
%If (Qt_5_2_0 -)
        SslOptionDisableSessionPersistence,
%End
    };

    typedef QFlags<QSsl::SslOption> SslOptions;
};

%End
%If (PyQt_SSL)
QFlags<QSsl::SslOption> operator|(QSsl::SslOption f1, QFlags<QSsl::SslOption> f2);
%End
