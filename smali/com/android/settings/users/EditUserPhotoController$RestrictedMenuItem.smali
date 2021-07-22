.class final Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;
.super Ljava/lang/Object;
.source "EditUserPhotoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/EditUserPhotoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RestrictedMenuItem"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/Runnable;

.field private final mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private final mContext:Landroid/content/Context;

.field private final mIsRestrictedByBase:Z

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput-object p1, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mContext:Landroid/content/Context;

    .line 425
    iput-object p2, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mTitle:Ljava/lang/String;

    .line 426
    iput-object p4, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mAction:Ljava/lang/Runnable;

    .line 428
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    .line 429
    invoke-static {p1, p3, p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 431
    iget-object p1, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mIsRestrictedByBase:Z

    return-void
.end method


# virtual methods
.method final doAction()V
    .locals 1

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->isRestrictedByBase()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->isRestrictedByAdmin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    .line 450
    :cond_1
    iget-object p0, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mAction:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method final isRestrictedByAdmin()Z
    .locals 0

    .line 454
    iget-object p0, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method final isRestrictedByBase()Z
    .locals 0

    .line 458
    iget-boolean p0, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mIsRestrictedByBase:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 437
    iget-object p0, p0, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method
