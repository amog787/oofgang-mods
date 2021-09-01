.class public Lcom/android/settings/enterprise/ApplicationListFragment$AdminGrantedPermissionMicrophone;
.super Lcom/android/settings/enterprise/ApplicationListFragment$AdminGrantedPermission;
.source "ApplicationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/enterprise/ApplicationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdminGrantedPermissionMicrophone"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 95
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/enterprise/ApplicationListFragment$AdminGrantedPermission;-><init>([Ljava/lang/String;)V

    return-void
.end method
