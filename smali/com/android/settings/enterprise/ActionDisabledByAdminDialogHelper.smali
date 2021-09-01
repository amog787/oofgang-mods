.class public Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;
.super Ljava/lang/Object;
.source "ActionDisabledByAdminDialogHelper.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDialogView:Landroid/view/ViewGroup;

.field mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mRestriction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private getEnforcementAdminUserId()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {p0, v0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->getEnforcementAdminUserId(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)I

    move-result p0

    return p0
.end method

.method private getEnforcementAdminUserId(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)I
    .locals 0

    .line 68
    iget-object p0, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    if-nez p0, :cond_0

    const/16 p0, -0x2710

    return p0

    .line 71
    :cond_0
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    return p0
.end method

.method private initializeDialogViews(Landroid/view/View;Landroid/content/ComponentName;ILjava/lang/String;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    .line 122
    :cond_0
    sget v0, Lcom/android/settings/R$id;->admin_support_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 123
    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->isAdminInCurrentUserOrProfile(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    .line 124
    invoke-static {v1, p3}, Lcom/android/settingslib/RestrictedLockUtils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    .line 135
    invoke-static {v1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    .line 136
    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 137
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 134
    invoke-static {v1, v3, v4, p3}, Lcom/android/settings/Utils;->getBadgedIcon(Landroid/util/IconDrawableFactory;Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 127
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x10800b4

    .line 128
    invoke-virtual {p2, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 127
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object p2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v3, 0x1010435

    const/4 v4, 0x0

    aput v3, v1, v4

    invoke-virtual {p2, v1}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 131
    invoke-virtual {p2, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 132
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    move-object p2, v2

    .line 142
    :goto_1
    invoke-virtual {p0, p1, p4}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->setAdminSupportTitle(Landroid/view/View;Ljava/lang/String;)V

    const/16 p4, -0x2710

    if-ne p3, p4, :cond_3

    goto :goto_2

    .line 148
    :cond_3
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 151
    :goto_2
    iget-object p3, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    new-instance p4, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {p4, p2, v2}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {p0, p3, p1, p4}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->setAdminSupportDetails(Landroid/app/Activity;Landroid/view/View;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method private synthetic lambda$maybeSetLearnMoreButton$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 101
    iget-object p1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object p2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->showAdminPolicies(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/app/Activity;)V

    .line 102
    iget-object p0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$maybeSetLearnMoreButton$0$ActionDisabledByAdminDialogHelper(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->lambda$maybeSetLearnMoreButton$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method maybeSetLearnMoreButton(Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {p0, v1}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->getEnforcementAdminUserId(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)I

    move-result v1

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    sget v0, Lcom/android/settings/R$string;->learn_more:I

    new-instance v1, Lcom/android/settings/enterprise/-$$Lambda$ActionDisabledByAdminDialogHelper$6KhLFg05b1gb8U6JccTnxRXgU-0;

    invoke-direct {v1, p0}, Lcom/android/settings/enterprise/-$$Lambda$ActionDisabledByAdminDialogHelper$6KhLFg05b1gb8U6JccTnxRXgU-0;-><init>(Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_0
    return-void
.end method

.method public prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 4

    .line 81
    iput-object p2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 82
    iput-object p1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    .line 83
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->admin_support_details_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mDialogView:Landroid/view/ViewGroup;

    .line 86
    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v0, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->getEnforcementAdminUserId()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    invoke-direct {p0, p2, v0, v2, v3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->initializeDialogViews(Landroid/view/View;Landroid/content/ComponentName;ILjava/lang/String;)V

    .line 88
    sget p2, Lcom/android/settings/R$string;->okay:I

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->maybeSetLearnMoreButton(Landroidx/appcompat/app/AlertDialog$Builder;)V

    return-object p1
.end method

.method setAdminSupportDetails(Landroid/app/Activity;Landroid/view/View;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 3

    if-eqz p3, :cond_5

    .line 192
    iget-object v0, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "device_policy"

    .line 196
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 198
    iget-object v1, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-static {p1, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->isAdminInCurrentUserOrProfile(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 200
    invoke-direct {p0, p3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->getEnforcementAdminUserId(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)I

    move-result v1

    .line 199
    invoke-static {p1, v1}, Lcom/android/settingslib/RestrictedLockUtils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 203
    :cond_1
    iget-object p1, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    if-nez p1, :cond_2

    .line 204
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    .line 207
    :cond_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    const/16 v1, 0x3e8

    invoke-static {p1, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 208
    iget-object p1, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 209
    invoke-direct {p0, p3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->getEnforcementAdminUserId(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)I

    move-result p0

    .line 208
    invoke-virtual {v0, p1, p0}, Landroid/app/admin/DevicePolicyManager;->getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_5

    .line 212
    sget p0, Lcom/android/settings/R$id;->admin_support_msg:I

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 213
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 201
    :cond_4
    :goto_0
    iput-object v2, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    :cond_5
    :goto_1
    return-void
.end method

.method setAdminSupportTitle(Landroid/view/View;Ljava/lang/String;)V
    .locals 6

    .line 156
    sget p0, Lcom/android/settings/R$id;->admin_support_dialog_title:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 161
    sget p1, Lcom/android/settings/R$string;->disabled_by_policy_title:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_1
    const/4 p1, -0x1

    .line 164
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "no_adjust_volume"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v0, "no_outgoing_calls"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    move p1, v5

    goto :goto_0

    :sswitch_2
    const-string v0, "policy_suspend_packages"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    move p1, v1

    goto :goto_0

    :sswitch_3
    const-string v0, "policy_disable_screen_capture"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    move p1, v2

    goto :goto_0

    :sswitch_4
    const-string v0, "policy_disable_camera"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    move p1, v3

    goto :goto_0

    :sswitch_5
    const-string v0, "no_sms"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    move p1, v4

    :cond_2
    :goto_0
    if-eqz p1, :cond_8

    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    .line 185
    sget p1, Lcom/android/settings/R$string;->disabled_by_policy_title:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 181
    :cond_3
    sget p1, Lcom/android/settings/R$string;->disabled_by_policy_title_suspend_packages:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 178
    :cond_4
    sget p1, Lcom/android/settings/R$string;->disabled_by_policy_title_screen_capture:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 175
    :cond_5
    sget p1, Lcom/android/settings/R$string;->disabled_by_policy_title_camera:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 172
    :cond_6
    sget p1, Lcom/android/settings/R$string;->disabled_by_policy_title_sms:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 169
    :cond_7
    sget p1, Lcom/android/settings/R$string;->disabled_by_policy_title_outgoing_calls:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 166
    :cond_8
    sget p1, Lcom/android/settings/R$string;->disabled_by_policy_title_adjust_volume:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3e01ce25 -> :sswitch_5
        -0x379078f7 -> :sswitch_4
        0x24f9a257 -> :sswitch_3
        0x546cf0fd -> :sswitch_2
        0x74422d80 -> :sswitch_1
        0x7f4c17cc -> :sswitch_0
    .end sparse-switch
.end method

.method showAdminPolicies(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/app/Activity;)V
    .locals 2

    .line 220
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 221
    iget-object v0, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 222
    const-class v0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    invoke-virtual {p0, p2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 223
    iget-object v0, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    const-string v1, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v1, "android.app.extra.CALLED_FROM_SUPPORT_DIALOG"

    .line 225
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 227
    iget-object p1, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, p0, p1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 229
    :cond_0
    const-class p1, Lcom/android/settings/Settings$DeviceAdminSettingsActivity;

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 230
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 233
    invoke-virtual {p2, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public updateDialog(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, p2}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 111
    :cond_0
    iput-object p2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 112
    iput-object p1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    .line 113
    iget-object p1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mDialogView:Landroid/view/ViewGroup;

    iget-object p2, p2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->getEnforcementAdminUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->initializeDialogViews(Landroid/view/View;Landroid/content/ComponentName;ILjava/lang/String;)V

    return-void
.end method
