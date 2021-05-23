.class public final Lcom/oneplus/android/server/display/OpColorDisplayService;
.super Lcom/oneplus/display/IOneplusColorDisplay$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/display/OpColorDisplayService$tsu;
    }
.end annotation


# static fields
.field private static final ADVANCE_DISPLAYP3:I = 0x4

.field private static final ADVANCE_SRGB:I = 0x3

.field private static final ADVANCE_WIDE:I = 0x2

.field private static final CUSTOM_DISPLAYP3_MODE:I = 0x2

.field private static final CUSTOM_MODE:I = 0x3

.field private static final CUSTOM_NTSC_MODE:I = 0x0

.field private static final CUSTOM_SRGB_MODE:I = 0x1

.field private static final DEFAULT_MODE:I = 0x1

.field private static final DISABLE_COLOR_FAST:I = 0x0

.field private static final FACTORY_MODE:I = 0x14

.field private static final LAUNCHER:Ljava/lang/String; = "net.oneplus.launcher"

.field private static final MSG_COLORREAD2NIGHT:I = 0xd

.field private static final MSG_COLORREAD2READ:I = 0xf

.field private static final MSG_COLORREAD_SWITCH:I = 0x11

.field private static final MSG_CUSTOM_COLOR_TEMPERATURE:I = 0xc

.field private static final MSG_DCENABLE:I = 0x8

.field private static final MSG_DISABLECOLOR:I = 0x4

.field private static final MSG_DISABLE_LIGHT_SENSOR:I = 0x13

.field private static final MSG_ENTER_DOOGLE_MATRIX_MODE:I = 0x15

.field private static final MSG_EXIT_DOOGLE_MATRIX_MODE:I = 0x16

.field private static final MSG_FINGERPRINT_OFF:I = 0x1a

.field private static final MSG_NIGHT2COLOREEAD:I = 0xe

.field private static final MSG_NIGHT2READING:I = 0x2

.field private static final MSG_NIGHTBRIGHTNESS:I = 0xa

.field private static final MSG_NIGHTSATURATION:I = 0x1d

.field private static final MSG_NIGHTSATURATION_RECOVER:I = 0x1f

.field private static final MSG_NIGHTSTRENGTH:I = 0x9

.field private static final MSG_NIGHT_SWITCH:I = 0x0

.field private static final MSG_NOTIFY_UNLOCK_SUCCESS:I = 0x1c

.field private static final MSG_READ2COLORREAD:I = 0x10

.field private static final MSG_READING2NIGHT:I = 0x3

.field private static final MSG_READING_SWITCH:I = 0x1

.field private static final MSG_RECOVER_ONEPLUS_MATRIX:I = 0xb

.field private static final MSG_RESUME_COLOR_MODE:I = 0x1b

.field private static final MSG_REVERTSTATUS:I = 0x5

.field private static final MSG_SCREEN_OFF:I = 0x7

.field private static final MSG_SCREEN_ON:I = 0x6

.field private static final MSG_SETUP:I = 0x12

.field private static final MSG_UPDATE_AUTO_AD_STATUS:I = 0x14

.field private static final NATIVE:I = 0x7

.field private static final NATURAL_MODE:I = 0xa

.field private static final NATURE:I = 0x1

.field private static final OP_DC_ENABLE:I = 0x16

.field private static final OP_DISPLAY_HALSRGB_COLOR_MODE:I = 0x12

.field private static final OP_DISPLAY_P3_COLOR_MODE:I = 0x10

.field private static final OP_DISPLAY_WIDE_COLOR_MODE:I = 0x11

.field private static final OP_NATIVE_CUSTOMER_P3_MODE:I = 0x15

.field private static final OP_NATIVE_CUSTOMER_SRGB_MODE:I = 0x14

.field private static final OP_NATIVE_LOADING_EFFECT_MODE:I = 0x13

.field private static final OP_NOTIFY_DIMMING_SWITCH:I = 0x18

.field private static final PIXEL_COLOR_CALIBRATION_LOADING_OFF:I = 0x15

.field private static final PIXEL_COLOR_CALIBRATION_LOADING_ON:I = 0x16

.field private static final RESUME_COLOR:I = 0x2

.field private static final SCREATOR:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/oneplus/display/IOneplusColorDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_AUTO_AD:I = 0xc

.field private static final SET_AUTO_LTM:I = 0x21

.field private static final SHARPNESS0:I = 0xa

.field private static final SHARPNESS70:I = 0x9

.field private static final SUPPORT_BRIGHTNESS_SMOOTH:Z

.field private static final SUPPORT_CUSTOM_FINGERPRINT:Z

.field private static final SUPPORT_DIMMING:Z

.field private static final SUPPORT_IRISCHIP:Z

.field private static final SUPPORT_LOADING:Z

.field private static final SUPPORT_LOADING_EFFECT:Z

.field private static final SUPPORT_LTM:Z

.field private static final SUPPORT_SOFTIRIS:Z

.field private static final SURFACE_COMPOSER_INTERFACE_KEY:Ljava/lang/String; = "android.ui.ISurfaceComposer"

.field private static final SURFACE_FLINGER:Ljava/lang/String; = "SurfaceFlinger"

.field private static final SURFACE_FLINGER_TRANSACTION_FINGERPRINT_STATUS:I = 0x4e23

.field private static final TAG:Ljava/lang/String; = "OpColorDisplayService"

.field private static final UPDATE_BRIGHTNESS:I = 0x4e22

.field private static final VIVD:I


# instance fields
.field private exittime:Z

.field private firstunlock:Z

.field private isGammaAppFront:Z

.field private isIrisClose:Z

.field private mAdLtmStatus:Z

.field private final mCDHHandler:Lcom/oneplus/android/server/display/OpColorDisplayService$tsu;

.field private mColorDisplayThread:Landroid/os/HandlerThread;

.field private mColorReadModeState:Z

.field private mColorTintManager:Lcom/oneplus/android/server/display/tsu;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mDisableColorState:I

.field private final mDisplayToken:Landroid/os/IBinder;

.field private mDtm:Lcom/android/server/display/color/DisplayTransformManager;

.field private mExitFingerPrintModeReason:Z

.field private mFingerprintStatus:Z

.field private mFodVivd:Z

.field private mFpm:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFrontPackageListener:Lcom/android/server/OnePlusUtil$zta$you;

.field private final mHandler:Landroid/os/Handler;

.field private mHasFingerprint:Z

.field private mIsSetgammaData:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLowBacklightStatus:Z

.field private mModGamma:D

.field private mNightModeState:Z

.field private mOemBlackModeStatus:Z

.field private mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

.field private mOpWm:Landroid/view/IOpWindowManager;

.field private mSurfaceFlinger:Landroid/os/IBinder;

.field private mTempDisableDimming:Z

.field private mTempDisableSmoothSoftIris:Z

.field private mWBReadModeState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x3c

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_CUSTOM_FINGERPRINT:Z

    new-array v1, v0, [I

    const/16 v2, 0x125

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_SOFTIRIS:Z

    new-array v1, v0, [I

    const/16 v2, 0x124

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_IRISCHIP:Z

    new-array v1, v0, [I

    const/4 v2, 0x7

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_LOADING:Z

    new-array v1, v0, [I

    const/16 v2, 0xeb

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_BRIGHTNESS_SMOOTH:Z

    new-array v1, v0, [I

    const/4 v2, 0x4

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_LTM:Z

    new-array v1, v0, [I

    const/16 v2, 0x141

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_DIMMING:Z

    new-array v0, v0, [I

    const/16 v1, 0x14a

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_LOADING_EFFECT:Z

    new-instance v0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;

    invoke-direct {v0}, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;-><init>()V

    sput-object v0, Lcom/oneplus/android/server/display/OpColorDisplayService;->SCREATOR:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mHasFingerprint:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mWBReadModeState:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mNightModeState:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorReadModeState:Z

    iput v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mDisableColorState:I

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mAdLtmStatus:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->isGammaAppFront:Z

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iput-wide v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mModGamma:D

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mIsSetgammaData:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOemBlackModeStatus:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mLowBacklightStatus:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mTempDisableSmoothSoftIris:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFingerprintStatus:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFodVivd:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mTempDisableDimming:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mExitFingerPrintModeReason:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->exittime:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->isIrisClose:Z

    iput-boolean v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->firstunlock:Z

    iput-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ColorDisplayThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorDisplayThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/oneplus/android/server/display/OpColorDisplayService$tsu;

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorDisplayThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/android/server/display/OpColorDisplayService$tsu;-><init>(Lcom/oneplus/android/server/display/OpColorDisplayService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCDHHandler:Lcom/oneplus/android/server/display/OpColorDisplayService$tsu;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorDisplayThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-direct {v0, p1}, Lcom/oneplus/android/server/display/OpColorModeManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    new-instance v0, Lcom/oneplus/android/server/display/tsu;

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-direct {v0, v1, v2}, Lcom/oneplus/android/server/display/tsu;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/tsu;

    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x111011e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFodVivd:Z

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->revertStatus(Z)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_SOFTIRIS:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mNightModeState:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mWBReadModeState:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/OpColorModeManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/oneplus/android/server/display/OpColorDisplayService;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mDisableColorState:I

    return p0
.end method

.method static synthetic access$1400(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->processScreenOn(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oneplus/android/server/display/OpColorDisplayService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->dcStatusChange()V

    return-void
.end method

.method static synthetic access$1600(Lcom/oneplus/android/server/display/OpColorDisplayService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->nightSaturationChanged()V

    return-void
.end method

.method static synthetic access$1700(Lcom/oneplus/android/server/display/OpColorDisplayService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->nightSaturationRecover()V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/android/server/display/OpColorDisplayService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->nightStrengthChanged()V

    return-void
.end method

.method static synthetic access$1900(Lcom/oneplus/android/server/display/OpColorDisplayService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->nightBrightnessChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/tsu;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/tsu;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorReadModeState:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/oneplus/android/server/display/OpColorDisplayService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->setUp()V

    return-void
.end method

.method static synthetic access$2200(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mAdLtmStatus:Z

    return p0
.end method

.method static synthetic access$2300()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_LTM:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->notifyIrisFingerprintStatus(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/oneplus/android/server/display/OpColorDisplayService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->notifyResumeColorMode()V

    return-void
.end method

.method static synthetic access$2600(Lcom/oneplus/android/server/display/OpColorDisplayService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->setUnlockSuccessStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->getOemBlackModeStatus()Z

    move-result p0

    return p0
.end method

.method static synthetic access$402(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOemBlackModeStatus:Z

    return p1
.end method

.method static synthetic access$500(Lcom/oneplus/android/server/display/OpColorDisplayService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->notifyDealIgcParameter()V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->getLowBacklightStatus()Z

    move-result p0

    return p0
.end method

.method static synthetic access$702(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mLowBacklightStatus:Z

    return p1
.end method

.method static synthetic access$800(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->isGammaAppFront:Z

    return p0
.end method

.method static synthetic access$802(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->isGammaAppFront:Z

    return p1
.end method

.method static synthetic access$902(Lcom/oneplus/android/server/display/OpColorDisplayService;D)D
    .locals 0

    iput-wide p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mModGamma:D

    return-wide p1
.end method

.method private dcStatusChange()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    const-string v2, "oneplus_dc_dimming_value"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v0, "persist.vendor.dc.enable"

    if-eqz v1, :cond_1

    const-string v2, "1"

    goto :goto_1

    :cond_1
    const-string v2, "0"

    :goto_1
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_BRIGHTNESS_SMOOTH:Z

    if-eqz v0, :cond_2

    const-string v0, "OpColorDisplayService"

    const-string v1, "Update Screen Brightness."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    const-string v2, "screen_brightness"

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_3

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->updateScreenBrighness()V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/16 v0, 0x16

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->gck(IZ)V

    :cond_3
    :goto_2
    return-void
.end method

.method private getAuthenticatedPackage()Z
    .locals 4

    const-string p0, "OpColorDisplayService"

    const-string v0, "fingerprint"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintService;->getAuthenticatedPackage()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fp in used: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAuthenticatedPackage , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static getDefault()Lcom/oneplus/display/IOneplusColorDisplay;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/display/OpColorDisplayService;->SCREATOR:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/display/IOneplusColorDisplay;

    return-object v0
.end method

.method private getLowBacklightStatus()Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "colour_cast"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private getOemBlackModeStatus()Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oem_black_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private getSurfaceFlinger()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mSurfaceFlinger:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mSurfaceFlinger:Landroid/os/IBinder;

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mSurfaceFlinger:Landroid/os/IBinder;

    return-object p0
.end method

.method private nightBrightnessChanged()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/tsu;

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/tsu;->lqr()V

    return-void
.end method

.method private nightSaturationChanged()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/tsu;

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/tsu;->tsu()V

    return-void
.end method

.method private nightSaturationRecover()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/tsu;

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/tsu;->oxb()V

    return-void
.end method

.method private nightStrengthChanged()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/tsu;

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/tsu;->veq()V

    return-void
.end method

.method private notifyDealIgcParameter()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gamma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mModGamma:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "  mOemBlackModeStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOemBlackModeStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  mLowBacklightStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mLowBacklightStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  mIsSetgammaData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mIsSetgammaData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->isGammaAppFront:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOemBlackModeStatus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mLowBacklightStatus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mIsSetgammaData:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    iget-wide v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mModGamma:D

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/android/server/display/OpColorModeManager;->wtn(D)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->isGammaAppFront:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOemBlackModeStatus:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mLowBacklightStatus:Z

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mIsSetgammaData:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/android/server/display/OpColorModeManager;->wtn(D)V

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mIsSetgammaData:Z

    :cond_2
    return-void
.end method

.method private notifyIrisFingerprintStatus(Z)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isIrisClose = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->isIrisClose:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   fingerprintStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->getSurfaceFlinger()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->isIrisClose:Z

    if-eq v0, p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyIrisFingerprintStatus fingerprint_status = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->getSurfaceFlinger()Landroid/os/IBinder;

    move-result-object v4

    const/16 v5, 0x4e23

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v6, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    iget-object v4, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "fod_mode"

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iget v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-static {v4, v5, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to notifyIrisFingerprintStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    const-string v0, "Failed to notifyIrisFingerprintStatus."

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v3, "Failed to notifyIrisFingerprintStatus"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->isIrisClose:Z

    goto :goto_5

    :goto_4
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_2
    :goto_5
    return-void
.end method

.method private notifyResumeColorMode()V
    .locals 5

    const-string v0, "OpColorDisplayService"

    const-string v1, "notifyResumeColorMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    iget v2, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {v1, v2}, Lcom/oneplus/android/server/display/OpColorModeManager;->you(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_0

    const-string v2, "error, should not be this value"

    packed-switch v1, :pswitch_data_0

    const-string p0, "no one match"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_0
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_1
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p0, v2}, Lcom/oneplus/android/server/display/OpColorModeManager;->igw(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    iget v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->tsu(I)I

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->igw(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    iget v4, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v4}, Lcom/oneplus/android/server/display/OpColorModeManager;->tsu(I)I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p0, v3}, Lcom/oneplus/android/server/display/OpColorModeManager;->igw(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    iget v2, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v2}, Lcom/oneplus/android/server/display/OpColorModeManager;->tsu(I)I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorModeManager;->igw(I)V

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private processScreenOn(Z)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processScreenOn   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/tsu;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Lcom/oneplus/android/server/display/tsu;->fto(Z)V

    const-wide/16 v2, 0xfa

    :try_start_0
    invoke-static {v2, v3}, Landroid/os/HandlerThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mKeyguardManager:Landroid/app/KeyguardManager;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "mKeyguardManager is null!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isKeyguard =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.fingerprint"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    const-string v4, "fingerprint"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_1
    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    sget-boolean v5, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v4

    :goto_2
    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mHasFingerprint:Z

    goto :goto_3

    :cond_3
    const-string v0, "mFpm == null"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHasFingerprint = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mHasFingerprint:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mHasFingerprint:Z

    if-nez v0, :cond_6

    const-string v0, "ColorDisable"

    invoke-static {v0}, Lcom/oneplus/server/you;->tsu(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_4

    const/4 v0, 0x2

    const-string v1, "FingerPrintMode"

    invoke-static {v1, v0, v4}, Lcom/oneplus/server/you;->rtg(Ljava/lang/String;II)V

    :cond_4
    sget-boolean v0, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_SOFTIRIS:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, v4}, Lcom/oneplus/android/server/display/OpColorDisplayService;->notifyIrisFingerprintStatus(Z)V

    :cond_5
    invoke-direct {p0, v4}, Lcom/oneplus/android/server/display/OpColorDisplayService;->revertStatus(Z)V

    goto :goto_4

    :cond_6
    iget-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->firstunlock:Z

    if-eqz v0, :cond_8

    :cond_7
    :goto_4
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/tsu;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/tsu;->ire(Z)V

    :cond_8
    return-void
.end method

.method private revertStatus(Z)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reverStatus needMatrixInit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mTempDisableSmoothSoftIris:Z

    const/16 v2, 0x14

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    iget v4, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v4}, Lcom/oneplus/android/server/display/OpColorModeManager;->you(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    sget-boolean v0, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_SOFTIRIS:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v3}, Lcom/oneplus/android/server/display/OpColorDisplayService;->notifyIrisFingerprintStatus(Z)V

    iput-boolean v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mTempDisableSmoothSoftIris:Z

    :cond_0
    sget-boolean v0, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_DIMMING:Z

    const/16 v4, 0x18

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mTempDisableDimming:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    iget v6, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v6}, Lcom/oneplus/android/server/display/OpColorModeManager;->you(I)I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {v0, v4, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->gck(IZ)V

    iput-boolean v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mTempDisableDimming:Z

    :cond_1
    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    iget v6, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v6}, Lcom/oneplus/android/server/display/OpColorModeManager;->you(I)I

    move-result v0

    const/16 v6, 0x10

    const/16 v7, 0x13

    if-eq v0, v5, :cond_11

    const/4 v8, 0x3

    const/16 v9, 0x11

    if-eq v0, v8, :cond_9

    const/16 v2, 0xa

    if-eq v0, v2, :cond_7

    packed-switch v0, :pswitch_data_0

    const-string p0, "no one match"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :pswitch_0
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v9, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->gck(IZ)V

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/tsu;

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/tsu;->cjf()V

    goto/16 :goto_6

    :pswitch_1
    sget-boolean p1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_SOFTIRIS:Z

    if-eqz p1, :cond_2

    invoke-direct {p0, v5}, Lcom/oneplus/android/server/display/OpColorDisplayService;->notifyIrisFingerprintStatus(Z)V

    iput-boolean v5, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mTempDisableSmoothSoftIris:Z

    :cond_2
    iget-boolean p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFodVivd:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v3}, Lcom/oneplus/android/server/display/OpColorModeManager;->igw(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v6, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->gck(IZ)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/oneplus/android/server/display/OpColorModeManager;->igw(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v9, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->gck(IZ)V

    :goto_0
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/tsu;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/tsu;->cjf()V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/tsu;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/tsu;->oxb()V

    sget-boolean p1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_LOADING:Z

    if-eqz p1, :cond_4

    sget-boolean p1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_LOADING_EFFECT:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v7, v3}, Lcom/oneplus/android/server/display/OpColorModeManager;->gck(IZ)V

    goto :goto_1

    :cond_4
    sget-boolean p1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_LOADING:Z

    if-nez p1, :cond_5

    sget-boolean p1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_LOADING_EFFECT:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v7, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->gck(IZ)V

    :cond_5
    :goto_1
    sget-boolean p1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_LOADING_EFFECT:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v7, v3}, Lcom/oneplus/android/server/display/OpColorModeManager;->gck(IZ)V

    :cond_6
    sget-boolean p1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_DIMMING:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v4, v3}, Lcom/oneplus/android/server/display/OpColorModeManager;->gck(IZ)V

    iput-boolean v5, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mTempDisableDimming:Z

    goto/16 :goto_6

    :cond_7
    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {v0, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->igw(I)V

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->gck(IZ)V

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/tsu;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/tsu;->cjf()V

    :cond_8
    sget-boolean p1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_LOADING_EFFECT:Z

    if-eqz p1, :cond_13

    goto/16 :goto_5

    :cond_9
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    iget v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {p1, v0}, Lcom/oneplus/android/server/display/OpColorModeManager;->tsu(I)I

    move-result p1

    const/4 v0, 0x2

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v0}, Lcom/oneplus/android/server/display/OpColorModeManager;->igw(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v9, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->gck(IZ)V

    sget-boolean p1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_SOFTIRIS:Z

    if-eqz p1, :cond_a

    sget-boolean p1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_LOADING_EFFECT:Z

    if-nez p1, :cond_a

    :goto_2
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v7, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->gck(IZ)V

    goto :goto_4

    :cond_a
    sget-boolean p1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_LOADING_EFFECT:Z

    if-eqz p1, :cond_f

    :goto_3
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v7, v3}, Lcom/oneplus/android/server/display/OpColorModeManager;->gck(IZ)V

    goto :goto_4

    :cond_b
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    iget v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {p1, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->tsu(I)I

    move-result p1

    if-ne p1, v5, :cond_d

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v8}, Lcom/oneplus/android/server/display/OpColorModeManager;->igw(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v2, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->gck(IZ)V

    sget-boolean p1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_SOFTIRIS:Z

    if-eqz p1, :cond_c

    sget-boolean p1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_LOADING_EFFECT:Z

    if-nez p1, :cond_c

    goto :goto_3

    :cond_c
    sget-boolean p1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_LOADING_EFFECT:Z

    if-eqz p1, :cond_f

    goto :goto_2

    :cond_d
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    iget v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {p1, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->tsu(I)I

    move-result p1

    if-ne p1, v0, :cond_f

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/oneplus/android/server/display/OpColorModeManager;->igw(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/16 v0, 0x15

    invoke-virtual {p1, v0, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->gck(IZ)V

    sget-boolean p1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_SOFTIRIS:Z

    if-eqz p1, :cond_e

    sget-boolean p1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_LOADING_EFFECT:Z

    if-nez p1, :cond_e

    goto :goto_3

    :cond_e
    sget-boolean p1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_LOADING_EFFECT:Z

    if-eqz p1, :cond_f

    goto :goto_2

    :cond_f
    :goto_4
    sget-boolean p1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_LOADING:Z

    if-eqz p1, :cond_10

    sget-boolean p1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_SOFTIRIS:Z

    if-nez p1, :cond_10

    sget-boolean p1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_LOADING_EFFECT:Z

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/tsu;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/tsu;->ugm()V

    :cond_10
    sget-boolean p1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_LOADING:Z

    if-eqz p1, :cond_15

    goto :goto_5

    :cond_11
    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {v0, v3}, Lcom/oneplus/android/server/display/OpColorModeManager;->igw(I)V

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {v0, v6, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->gck(IZ)V

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/tsu;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/tsu;->cjf()V

    :cond_12
    sget-boolean p1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_LOADING_EFFECT:Z

    if-eqz p1, :cond_14

    :cond_13
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p0, v7, v3}, Lcom/oneplus/android/server/display/OpColorModeManager;->gck(IZ)V

    goto :goto_6

    :cond_14
    :goto_5
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p0, v7, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->gck(IZ)V

    :cond_15
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private sendMsgDelayed(II)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCDHHandler:Lcom/oneplus/android/server/display/OpColorDisplayService$tsu;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCDHHandler:Lcom/oneplus/android/server/display/OpColorDisplayService$tsu;

    int-to-long p1, p2

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private setUnlockSuccessStatus()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mExitFingerPrintModeReason:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->exittime:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->exittime:Z

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->notifyIrisFingerprintStatus(Z)V

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->revertStatus(Z)V

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mExitFingerPrintModeReason:Z

    sget-boolean v0, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_DIMMING:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/16 v0, 0x18

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->gck(IZ)V

    :cond_0
    const-string p0, "OpColorDisplayService"

    const-string v0, "KeyguardDone is finish by  set ExitFingerPrintModeByUnlockSuccess"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private setUp()V
    .locals 4

    const-string v0, "OpColorDisplayService"

    const-string v1, "setUp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/oneplus/android/server/display/tsu;

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-direct {v0, v1, v2}, Lcom/oneplus/android/server/display/tsu;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/tsu;

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_black_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOemBlackModeStatus:Z

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "colour_cast"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mLowBacklightStatus:Z

    sget-boolean v0, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_SOFTIRIS:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/display/OpColorDisplayService;->notifyIrisFingerprintStatus(Z)V

    :cond_2
    invoke-direct {p0, v2}, Lcom/oneplus/android/server/display/OpColorDisplayService;->revertStatus(Z)V

    iget v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {v0, v2}, Lcom/oneplus/android/server/display/OpColorModeManager;->ssp(I)Z

    move-result v0

    const-string v3, "accessibility_display_grayscale_enabled"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-static {v0, v3, v2, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-static {v0, v3, v1, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_4
    :goto_2
    return-void
.end method

.method private updateScreenBrighness()V
    .locals 5

    const-string v0, "OpColorDisplayService"

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->getSurfaceFlinger()Landroid/os/IBinder;

    move-result-object p0

    const/16 v2, 0x4e22

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {p0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to communicate with SurfaceFlinger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_1
    const-string p0, "Failed to set screen brightness using Iris."

    goto :goto_0

    :catch_2
    const-string p0, "Failed to update screen brightness."

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public adjustLightColorGamut(I)V
    .locals 0

    return-void
.end method

.method public disableColor(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisableColor state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mDisableColorState:I

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public disablelightSensor()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "disablelightSensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    const-string p1, "OpColorDisplayService"

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    return-void
.end method

.method public enterGoogleMatrix()V
    .locals 2

    const/16 v0, 0x15

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsgDelayed(II)V

    return-void
.end method

.method public exitGoogleMatrix()V
    .locals 1

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public notifyCameraStatus(Z)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyCameraStatus activeCamera = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpColorDisplayService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyQSExpanded(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fingerprintStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFingerprintStatus:Z

    sget-boolean v0, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_SOFTIRIS:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/16 p1, 0x1a

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    :cond_0
    return-void
.end method

.method public notifySetUp(I)V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "notifySetUp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    const/16 p1, 0x12

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public onDCEnable()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "onDCEnable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/oneplus/android/server/display/you;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/display/you;-><init>(Lcom/oneplus/android/server/display/OpColorDisplayService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const-string p1, "oneplus_colordisplay_service"

    invoke-static {p1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public recoverColorSaturation()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "recoverColorSaturation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public recoverOneplusColorMatrix()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "recoverOneplusColorMatrix"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public resetStatus(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const-string p0, "no one match"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_0
    sget-boolean p1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_SOFTIRIS:Z

    if-eqz p1, :cond_4

    :try_start_0
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpWm:Landroid/view/IOpWindowManager;

    if-nez p1, :cond_1

    const-string p1, "oneplus_windowmanagerservice"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IOpWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOpWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpWm:Landroid/view/IOpWindowManager;

    :cond_1
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v2, "android.hardware.fingerprint"

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    const-string v2, "fingerprint"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_2
    const-wide/16 v2, 0x1e

    invoke-static {v2, v3}, Landroid/os/HandlerThread;->sleep(J)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpWm:Landroid/view/IOpWindowManager;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpWm:Landroid/view/IOpWindowManager;

    invoke-interface {p1}, Landroid/view/IOpWindowManager;->isKeyguardDone()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->getAuthenticatedPackage()Z

    move-result p1

    if-nez p1, :cond_3

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->exittime:Z

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->notifyIrisFingerprintStatus(Z)V

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mExitFingerPrintModeReason:Z

    goto :goto_0

    :cond_3
    const-string p1, "KeyguardDone is not finish"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while checking system app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    invoke-direct {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->revertStatus(Z)V

    goto/16 :goto_4

    :cond_5
    iget-boolean p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->isIrisClose:Z

    if-nez p1, :cond_6

    const/16 p1, 0x320

    invoke-static {v0, p1}, Lcom/android/server/wm/OpScreenModeServiceInjector;->setRateDirectly(II)V

    const-wide/16 v2, 0x14

    :try_start_1
    invoke-static {v2, v3}, Landroid/os/HandlerThread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while wait 50ms to make sure frame switch complete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    sget-boolean p1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_SOFTIRIS:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_7

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->notifyIrisFingerprintStatus(Z)V

    :cond_7
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/tsu;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/tsu;->ywr()V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/tsu;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/tsu;->oxb()V

    iget-boolean p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFodVivd:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v0}, Lcom/oneplus/android/server/display/OpColorModeManager;->igw(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/16 v2, 0x10

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Lcom/oneplus/android/server/display/OpColorModeManager;->igw(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/16 v2, 0x11

    :goto_2
    invoke-virtual {p1, v2, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->gck(IZ)V

    sget-boolean p1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_LOADING:Z

    const/16 v2, 0x13

    if-eqz p1, :cond_9

    sget-boolean p1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_LOADING_EFFECT:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v2, v0}, Lcom/oneplus/android/server/display/OpColorModeManager;->gck(IZ)V

    goto :goto_3

    :cond_9
    sget-boolean p1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_LOADING:Z

    if-nez p1, :cond_a

    sget-boolean p1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_LOADING_EFFECT:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v2, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->gck(IZ)V

    :cond_a
    :goto_3
    sget-boolean p1, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_LOADING_EFFECT:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v2, v0}, Lcom/oneplus/android/server/display/OpColorModeManager;->gck(IZ)V

    :cond_b
    iput-boolean v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->exittime:Z

    :goto_4
    return-void
.end method

.method public resumeColorMode()V
    .locals 1

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public screenColorModeChange()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "screenColorModeChange"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public screenStateChange(I)V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "screenStateChange"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x7

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x6

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public sendMsg(I)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCDHHandler:Lcom/oneplus/android/server/display/OpColorDisplayService$tsu;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCDHHandler:Lcom/oneplus/android/server/display/OpColorDisplayService$tsu;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public setActiveModesId(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActiveModesId modeId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorModeManager;->igw(I)V

    return-void
.end method

.method public setColorBalance2GrayColor()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "ColorBalance2GrayColor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mWBReadModeState:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mNightModeState:Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setColorBalance2PaperColor()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "setColorBalance2PaperColor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mNightModeState:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorReadModeState:Z

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setColorBalanceActivated(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorBalance activated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mNightModeState:Z

    const/4 p1, 0x0

    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsgDelayed(II)V

    return-void
.end method

.method public setColorGamutMode(IZ)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setColorGamutMode scenario = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " immediate = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpColorDisplayService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setColorSaturation()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "setColorSaturation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setColorTemperature()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "setColorTemperature"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setCustomColorTemperature()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "setCustomColorTemperature"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/oneplus/android/server/display/OpColorDisplayService;->SUPPORT_SOFTIRIS:Z

    if-nez v0, :cond_0

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    :cond_0
    return-void
.end method

.method public setExitFingerPrintModeWay(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->firstunlock:Z

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mExitFingerPrintModeReason:Z

    const/16 p1, 0x1c

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mExitFingerPrintModeReason = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mExitFingerPrintModeReason:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpColorDisplayService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setGrayColor2ColorBalance()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "GrayColor2ColorBalance"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mWBReadModeState:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mNightModeState:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setGrayColor2PaperColor()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "setGrayColor2PaperColor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mWBReadModeState:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorReadModeState:Z

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setGrayColorActivated(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GrayColor  activated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mWBReadModeState:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setMediaCodecState(Z)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setMediaCodecState on = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpColorDisplayService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setNightBrightness()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "setNightBrightness"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setPaperColor2ColorBalance()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "setPaperColor2ColorBalance"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorReadModeState:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mNightModeState:Z

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setPaperColor2GrayColor()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "setPaperColor2GrayColor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorReadModeState:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mWBReadModeState:Z

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setPaperColorActivated(Z)V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "setPaperColorActivated"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorReadModeState:Z

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public systemReady()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/display/OpColorDisplayService$you;

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/android/server/display/OpColorDisplayService$you;-><init>(Lcom/oneplus/android/server/display/OpColorDisplayService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_color_mode_settings_value"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v2, "screen_color_mode_advanced_settings_value"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v2, "oem_screen_better_value"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v2, "oem_black_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v2, "colour_cast"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    iget v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    new-instance v0, Lcom/oneplus/android/server/display/OpColorDisplayService$sis;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/display/OpColorDisplayService$sis;-><init>(Lcom/oneplus/android/server/display/OpColorDisplayService;)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFrontPackageListener:Lcom/android/server/OnePlusUtil$zta$you;

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFrontPackageListener:Lcom/android/server/OnePlusUtil$zta$you;

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->bio(Lcom/android/server/OnePlusUtil$zta$you;)V

    const-string p0, "OpColorDisplayService"

    const-string v0, "system ready"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateAutoAssertiveDisplayStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mAdLtmStatus:Z

    const/16 p1, 0x14

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method
