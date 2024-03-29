// qcamera.sip generated by MetaSIP
//
// This file is part of the QtMultimedia Python extension module.
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
#include <qcamera.h>
%End

class QCamera : QMediaObject
{
%TypeHeaderCode
#include <qcamera.h>
%End

public:
    enum Status
    {
        UnavailableStatus,
        UnloadedStatus,
        LoadingStatus,
        UnloadingStatus,
        LoadedStatus,
        StandbyStatus,
        StartingStatus,
        StoppingStatus,
        ActiveStatus,
    };

    enum State
    {
        UnloadedState,
        LoadedState,
        ActiveState,
    };

    enum CaptureMode
    {
        CaptureViewfinder,
        CaptureStillImage,
        CaptureVideo,
    };

    typedef QFlags<QCamera::CaptureMode> CaptureModes;

    enum Error
    {
        NoError,
        CameraError,
        InvalidRequestError,
        ServiceMissingError,
        NotSupportedFeatureError,
    };

    enum LockStatus
    {
        Unlocked,
        Searching,
        Locked,
    };

    enum LockChangeReason
    {
        UserRequest,
        LockAcquired,
        LockFailed,
        LockLost,
        LockTemporaryLost,
    };

    enum LockType
    {
        NoLock,
        LockExposure,
        LockWhiteBalance,
        LockFocus,
    };

    typedef QFlags<QCamera::LockType> LockTypes;
%If (Qt_5_3_0 -)

    enum Position
    {
        UnspecifiedPosition,
        BackFace,
        FrontFace,
    };

%End
    QCamera(QObject *parent /TransferThis/ = 0);
    QCamera(const QByteArray &device, QObject *parent /TransferThis/ = 0);
%If (Qt_5_3_0 -)
    QCamera(const QCameraInfo &cameraInfo, QObject *parent /TransferThis/ = 0);
%End
%If (Qt_5_3_0 -)
    QCamera(QCamera::Position position, QObject *parent /TransferThis/ = 0);
%End
    virtual ~QCamera();
    static QList<QByteArray> availableDevices();
    static QString deviceDescription(const QByteArray &device);
    virtual QMultimedia::AvailabilityStatus availability() const;
    QCamera::State state() const;
    QCamera::Status status() const;
    QFlags<QCamera::CaptureMode> captureMode() const;
    bool isCaptureModeSupported(QFlags<QCamera::CaptureMode> mode) const;
    QCameraExposure *exposure() const;
    QCameraFocus *focus() const;
    QCameraImageProcessing *imageProcessing() const;
    void setViewfinder(QVideoWidget *viewfinder);
    void setViewfinder(QGraphicsVideoItem *viewfinder);
    void setViewfinder(QAbstractVideoSurface *surface);
    QCamera::Error error() const;
    QString errorString() const;
    QFlags<QCamera::LockType> supportedLocks() const;
    QFlags<QCamera::LockType> requestedLocks() const;
    QCamera::LockStatus lockStatus() const;
    QCamera::LockStatus lockStatus(QCamera::LockType lock) const;

public slots:
    void setCaptureMode(QFlags<QCamera::CaptureMode> mode);
    void load();
    void unload();
    void start();
    void stop();
    void searchAndLock();
    void unlock();
    void searchAndLock(QFlags<QCamera::LockType> locks);
    void unlock(QFlags<QCamera::LockType> locks);

signals:
    void stateChanged(QCamera::State);
    void captureModeChanged(QFlags<QCamera::CaptureMode>);
    void statusChanged(QCamera::Status);
    void locked();
    void lockFailed();
    void lockStatusChanged(QCamera::LockStatus, QCamera::LockChangeReason);
    void lockStatusChanged(QCamera::LockType, QCamera::LockStatus, QCamera::LockChangeReason);
    void error(QCamera::Error);

private:
    QCamera(const QCamera &);
};

QFlags<QCamera::LockType> operator|(QCamera::LockType f1, QFlags<QCamera::LockType> f2);
