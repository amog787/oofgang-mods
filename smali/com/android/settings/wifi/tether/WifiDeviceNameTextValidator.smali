.class public Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;
.super Ljava/lang/Object;
.source "WifiDeviceNameTextValidator.java"

# interfaces
.implements Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTextValid(Ljava/lang/String;)Z
    .locals 0

    .line 28
    invoke-static {p1}, Lcom/android/settings/wifi/WifiUtils;->isSSIDTooLong(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/android/settings/wifi/WifiUtils;->isSSIDTooShort(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
