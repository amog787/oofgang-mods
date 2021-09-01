.class public Lcom/android/settings/notification/NotificationLockscreenPreference;
.super Lcom/android/settings/RestrictedListPreference;
.source "NotificationLockscreenPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;
    }
.end annotation


# instance fields
.field private mAdminRestrictingRemoteInput:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mAllowRemoteInput:Z

.field private mListener:Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;

.field private mRemoteInputCheckBoxEnabled:Z

.field private mShowRemoteInput:Z

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/RestrictedListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mRemoteInputCheckBoxEnabled:Z

    .line 46
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mUserId:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/NotificationLockscreenPreference;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mShowRemoteInput:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/NotificationLockscreenPreference;IZ)I
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/NotificationLockscreenPreference;->checkboxVisibilityForSelectedIndex(IZ)I

    move-result p0

    return p0
.end method

.method static synthetic access$202(Lcom/android/settings/notification/NotificationLockscreenPreference;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAllowRemoteInput:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/notification/NotificationLockscreenPreference;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAdminRestrictingRemoteInput:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p0
.end method

.method private checkboxVisibilityForSelectedIndex(IZ)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 133
    iget-boolean p0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mRemoteInputCheckBoxEnabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    return p0
.end method


# virtual methods
.method protected isAutoClosePreference()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onClick()V
    .locals 3

    .line 63
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-super {p0}, Landroidx/preference/DialogPreference;->onClick()V

    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    .line 121
    invoke-super {p0, p1}, Lcom/android/settings/CustomListPreference;->onDialogClosed(Z)V

    .line 122
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 123
    iget-boolean p0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAllowRemoteInput:Z

    const-string v0, "lock_screen_allow_remote_input"

    .line 122
    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method protected onDialogCreated(Landroid/app/Dialog;)V
    .locals 4

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/CustomListPreference;->onDialogCreated(Landroid/app/Dialog;)V

    .line 91
    invoke-virtual {p1}, Landroid/app/Dialog;->create()V

    .line 92
    sget v0, Lcom/android/settings/R$id;->lockscreen_remote_input:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 93
    iget-boolean v1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAllowRemoteInput:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 94
    iget-object v1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mListener:Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 95
    iget-object v1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAdminRestrictingRemoteInput:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 97
    sget v1, Lcom/android/settings/R$id;->restricted_lock_icon_remote_input:I

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAdminRestrictingRemoteInput:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v2, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAdminRestrictingRemoteInput:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v1, :cond_2

    .line 101
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    const v0, 0x1020265

    .line 102
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mListener:Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;

    .line 103
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method protected onDialogStateRestored(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1

    .line 109
    invoke-super {p0, p1, p2}, Lcom/android/settings/CustomListPreference;->onDialogStateRestored(Landroid/app/Dialog;Landroid/os/Bundle;)V

    .line 110
    move-object p2, p1

    check-cast p2, Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p2

    .line 111
    invoke-virtual {p2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result p2

    const v0, 0x1020265

    .line 113
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 114
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mShowRemoteInput:Z

    invoke-direct {p0, p2, v0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->checkboxVisibilityForSelectedIndex(IZ)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object p0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mListener:Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;->setView(Landroid/view/View;)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    .line 79
    new-instance v0, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;-><init>(Lcom/android/settings/notification/NotificationLockscreenPreference;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mListener:Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;

    .line 80
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/RestrictedListPreference;->createListAdapter(Landroid/content/Context;)Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/settings/RestrictedListPreference;->getSelectedValuePos()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mListener:Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;

    invoke-virtual {p1, p2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 82
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p2

    array-length p2, p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iput-boolean p2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mShowRemoteInput:Z

    .line 83
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v2, "lock_screen_allow_remote_input"

    invoke-static {p2, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAllowRemoteInput:Z

    .line 85
    sget p0, Lcom/android/settings/R$layout;->lockscreen_remote_input:I

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(I)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method
