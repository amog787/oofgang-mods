.class public Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;
.super Ljava/lang/Object;
.source "UninstallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogInfo"
.end annotation


# instance fields
.field public activityInfo:Landroid/content/pm/ActivityInfo;

.field public allUsers:Z

.field public appInfo:Landroid/content/pm/ApplicationInfo;

.field public callback:Landroid/os/IBinder;

.field public user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
