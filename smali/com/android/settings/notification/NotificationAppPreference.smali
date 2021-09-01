.class public Lcom/android/settings/notification/NotificationAppPreference;
.super Lcom/android/settings/widget/MasterSwitchPreference;
.source "NotificationAppPreference.java"


# instance fields
.field private mChecked:Z

.field private mEnableSwitch:Z

.field private mSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field protected mVibratePattern:[J

.field protected mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mEnableSwitch:Z

    .line 51
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "vibrator"

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/MasterSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 41
    iput-boolean p2, p0, Lcom/android/settings/notification/NotificationAppPreference;->mEnableSwitch:Z

    .line 60
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string/jumbo p2, "vibrator"

    .line 61
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/MasterSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 41
    iput-boolean p2, p0, Lcom/android/settings/notification/NotificationAppPreference;->mEnableSwitch:Z

    .line 79
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string/jumbo p2, "vibrator"

    .line 80
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/MasterSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    .line 41
    iput-boolean p2, p0, Lcom/android/settings/notification/NotificationAppPreference;->mEnableSwitch:Z

    .line 70
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string/jumbo p2, "vibrator"

    .line 71
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/NotificationAppPreference;)Landroidx/appcompat/widget/SwitchCompat;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/NotificationAppPreference;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mChecked:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/NotificationAppPreference;Z)Z
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistBoolean(Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 0

    .line 87
    sget p0, Lcom/android/settings/R$layout;->preference_widget_master_switch:I

    return p0
.end method

.method public isChecked()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mChecked:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 95
    sget v0, Lcom/android/settings/R$id;->switchWidget:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    new-instance v1, Lcom/android/settings/notification/NotificationAppPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationAppPreference$1;-><init>(Lcom/android/settings/notification/NotificationAppPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    :cond_0
    sget v0, Lcom/android/settings/R$id;->switchWidget:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p1, :cond_1

    .line 122
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 123
    iget-object p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mChecked:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 124
    iget-object p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean p0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mEnableSwitch:Z

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mChecked:Z

    .line 134
    iget-object p0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p0, :cond_0

    .line 135
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 151
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAppPreference;->setSwitchEnabled(Z)V

    return-void
.end method

.method public setSwitchEnabled(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mEnableSwitch:Z

    .line 141
    iget-object p0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p0, :cond_0

    .line 142
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method
