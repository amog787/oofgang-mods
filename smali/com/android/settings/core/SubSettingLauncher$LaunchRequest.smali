.class Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;
.super Ljava/lang/Object;
.source "SubSettingLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/core/SubSettingLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LaunchRequest"
.end annotation


# instance fields
.field arguments:Landroid/os/Bundle;

.field destinationName:Ljava/lang/String;

.field extras:Landroid/os/Bundle;

.field flags:I

.field mRequestCode:I

.field mResultListener:Landroidx/fragment/app/Fragment;

.field sourceMetricsCategory:I

.field title:Ljava/lang/CharSequence;

.field titleResId:I

.field titleResPackageName:Ljava/lang/String;

.field userHandle:Landroid/os/UserHandle;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x64

    .line 203
    iput v0, p0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->sourceMetricsCategory:I

    return-void
.end method
