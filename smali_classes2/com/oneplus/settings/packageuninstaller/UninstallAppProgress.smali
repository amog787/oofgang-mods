.class public Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;
.super Landroid/app/Activity;
.source "UninstallAppProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;,
        Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$PackageDeleteObserver;,
        Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$MessageHandler;
    }
.end annotation


# instance fields
.field private mAllUsers:Z

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mCallback:Landroid/os/IBinder;

.field private mHandler:Landroid/os/Handler;

.field private mIsViewInitialized:Z

.field private volatile mResultCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mResultCode:I

    .line 82
    new-instance v0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$MessageHandler;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$MessageHandler;-><init>(Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;)V

    iput-object v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;Landroid/os/Message;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;)Landroid/os/Handler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getProgressFragment()Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;
    .locals 1

    .line 378
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "progress_fragment"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;

    return-object p0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 14

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 105
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    goto/16 :goto_6

    .line 107
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->initView()V

    goto/16 :goto_6

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 112
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v2, :cond_3

    .line 113
    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->initView()V

    .line 116
    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mResultCode:I

    .line 117
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 119
    iget-object v1, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mCallback:Landroid/os/IBinder;

    if-eqz v1, :cond_4

    .line 121
    invoke-static {v1}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object p1

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mResultCode:I

    invoke-interface {p1, v1, v2, v0}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 131
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "android.intent.extra.RETURN_RESULT"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 132
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 133
    iget v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mResultCode:I

    const-string v1, "android.intent.extra.INSTALL_RESULT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    iget v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mResultCode:I

    if-ne v0, v2, :cond_5

    const/4 v2, -0x1

    :cond_5
    invoke-virtual {p0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 143
    :cond_6
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x4

    const-string v5, "Failed to talk to package manager"

    const-string v6, " with code "

    const-string v7, "Uninstall failed for "

    const-string v8, "user"

    const-string v9, "UninstallAppProgress"

    if-eq v1, v3, :cond_d

    const/4 v3, -0x2

    if-eq v1, v3, :cond_8

    if-eq v1, v2, :cond_7

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sget p1, Lcom/android/settings/R$string;->uninstall_failed:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    .line 145
    :cond_7
    sget p1, Lcom/android/settings/R$string;->uninstall_done:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->notifyPackageRemoved()V

    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 149
    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 150
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->setResultAndFinish()V

    return-void

    .line 154
    :cond_8
    invoke-virtual {p0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    const-string v1, "device_policy"

    .line 156
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 155
    invoke-static {v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    .line 158
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v6, 0x0

    .line 160
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 163
    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, v3, v10}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->isProfileOfOrSame(Landroid/os/UserManager;II)Z

    move-result v10

    if-eqz v10, :cond_a

    goto :goto_0

    .line 166
    :cond_a
    :try_start_1
    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v1, v0, v10}, Landroid/app/admin/IDevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v10
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v10, :cond_9

    move-object v6, v8

    goto :goto_1

    :catch_1
    move-exception v8

    .line 171
    invoke-static {v9, v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_b
    :goto_1
    const-string p1, "Uninstall failed because "

    if-nez v6, :cond_c

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is a device admin"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getProgressFragment()Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;->setDeviceManagerButtonVisible(Z)V

    .line 178
    sget p1, Lcom/android/settings/R$string;->uninstall_failed_device_policy_manager:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    .line 181
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is a device admin of user "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getProgressFragment()Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;->setDeviceManagerButtonVisible(Z)V

    .line 184
    sget p1, Lcom/android/settings/R$string;->uninstall_failed_device_policy_manager_of_user:I

    .line 185
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v1, v0, v4

    .line 184
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    .line 192
    :cond_d
    invoke-virtual {p0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    const-string v3, "package"

    .line 194
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 193
    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 195
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    move v10, v4

    .line 197
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    const/16 v12, -0x2710

    if-ge v10, v11, :cond_f

    .line 198
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    .line 200
    :try_start_2
    iget v13, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v3, v0, v13}, Landroid/content/pm/IPackageManager;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 202
    iget v3, v11, Landroid/content/pm/UserInfo;->id:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v11

    .line 207
    invoke-static {v9, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_f
    move v3, v12

    .line 210
    :goto_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 211
    invoke-direct {p0, v1, v5, v3}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->isProfileOfOrSame(Landroid/os/UserManager;II)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 212
    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getProgressFragment()Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;->setDeviceManagerButtonVisible(Z)V

    goto :goto_4

    .line 214
    :cond_10
    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getProgressFragment()Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;->setDeviceManagerButtonVisible(Z)V

    .line 215
    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getProgressFragment()Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;->setUsersButtonVisible(Z)V

    :goto_4
    if-nez v3, :cond_11

    .line 219
    sget p1, Lcom/android/settings/R$string;->uninstall_blocked_device_owner:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_11
    if-ne v3, v12, :cond_12

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " no blocking user"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sget p1, Lcom/android/settings/R$string;->uninstall_failed:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 225
    :cond_12
    iget-boolean p1, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mAllUsers:Z

    if-eqz p1, :cond_13

    .line 226
    sget p1, Lcom/android/settings/R$string;->uninstall_all_blocked_profile_owner:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 227
    :cond_13
    sget p1, Lcom/android/settings/R$string;->uninstall_blocked_profile_owner:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 237
    :goto_5
    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getProgressFragment()Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;->showCompletion(Ljava/lang/CharSequence;)V

    :cond_14
    :goto_6
    return-void
.end method

.method private initView()V
    .locals 6

    .line 326
    iget-boolean v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mIsViewInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 329
    iput-boolean v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mIsViewInitialized:Z

    .line 332
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 333
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010054

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 334
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_1

    .line 336
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    iget v4, v1, Landroid/util/TypedValue;->data:I

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 338
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    .line 339
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 338
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 342
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010452

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 343
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v3, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 345
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010451

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 346
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 348
    iget-object v1, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 349
    sget v0, Lcom/android/settings/R$string;->uninstall_update_title:I

    goto :goto_2

    :cond_3
    sget v0, Lcom/android/settings/R$string;->uninstall_application_title:I

    :goto_2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 351
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    const v0, 0x1020002

    new-instance v1, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;

    invoke-direct {v1}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;-><init>()V

    const-string v2, "progress_fragment"

    .line 352
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 353
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    return-void
.end method

.method private isProfileOfOrSame(Landroid/os/UserManager;II)Z
    .locals 0

    const/4 p0, 0x1

    if-ne p2, p3, :cond_0

    return p0

    .line 248
    :cond_0
    invoke-virtual {p1, p3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 249
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyPackageRemoved()V
    .locals 2

    .line 371
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oneplus.settings.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x11000000

    .line 372
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    .line 373
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 358
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 359
    iget v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mResultCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 364
    :cond_0
    iget v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mResultCode:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 367
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public getAppInfo()Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 254
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 256
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.packageinstaller.applicationInfo"

    .line 257
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    const-string v1, "android.content.pm.extra.CALLBACK"

    .line 258
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mCallback:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    .line 263
    iput p1, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mResultCode:I

    .line 265
    iget-object p1, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mCallback:Landroid/os/IBinder;

    if-eqz p1, :cond_0

    .line 267
    invoke-static {p1}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object p1

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mResultCode:I

    invoke-interface {p1, v0, v2, v1}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->setResultAndFinish()V

    :goto_0
    return-void

    :cond_1
    const-string p1, "android.intent.extra.UNINSTALL_ALL_USERS"

    const/4 v2, 0x0

    .line 280
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mAllUsers:Z

    const-string p1, "android.intent.extra.USER"

    .line 281
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    if-nez p1, :cond_2

    .line 283
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    .line 286
    :cond_2
    new-instance v0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$PackageDeleteObserver;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$PackageDeleteObserver;-><init>(Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$1;)V

    .line 291
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 293
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    const/4 v1, 0x2

    .line 296
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 297
    iget-boolean v5, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mAllUsers:Z

    if-eqz v5, :cond_3

    move v2, v1

    :cond_3
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 296
    invoke-virtual {v3, v4, v0, v2, p1}, Landroid/content/pm/PackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find package, not deleting "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UninstallAppProgress"

    invoke-static {v2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    :goto_1
    iget-object p0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setResultAndFinish()V
    .locals 1

    .line 321
    iget v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->mResultCode:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 322
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
