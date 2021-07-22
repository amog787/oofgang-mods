.class public Lcom/android/settings/notification/zen/ZenModeSendersImagePreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "ZenModeSendersImagePreferenceController.java"


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private final mIsMessages:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 50
    iput-boolean p4, p0, Lcom/android/settings/notification/zen/ZenModeSendersImagePreferenceController;->mIsMessages:Z

    return-void
.end method

.method private getPrioritySenders()I
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeSendersImagePreferenceController;->mIsMessages:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityMessageSenders()I

    move-result p0

    return p0

    .line 111
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityCallSenders()I

    move-result p0

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    .line 57
    sget v0, Lcom/android/settings/R$id;->zen_mode_settings_senders_image:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSendersImagePreferenceController;->mImageView:Landroid/widget/ImageView;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->KEY:Ljava/lang/String;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeSendersImagePreferenceController;->getPrioritySenders()I

    move-result p1

    if-nez p1, :cond_1

    .line 79
    iget-boolean p1, p0, Lcom/android/settings/notification/zen/ZenModeSendersImagePreferenceController;->mIsMessages:Z

    if-eqz p1, :cond_0

    .line 80
    sget p1, Lcom/android/settings/R$drawable;->zen_messages_any:I

    goto :goto_0

    .line 81
    :cond_0
    sget p1, Lcom/android/settings/R$drawable;->zen_calls_any:I

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->zen_mode_from_anyone:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_1
    const/4 v0, 0x1

    if-ne v0, p1, :cond_3

    .line 84
    iget-boolean p1, p0, Lcom/android/settings/notification/zen/ZenModeSendersImagePreferenceController;->mIsMessages:Z

    if-eqz p1, :cond_2

    .line 85
    sget p1, Lcom/android/settings/R$drawable;->zen_messages_contacts:I

    goto :goto_1

    .line 86
    :cond_2
    sget p1, Lcom/android/settings/R$drawable;->zen_calls_contacts:I

    .line 87
    :goto_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->zen_mode_from_contacts:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_3
    const/4 v0, 0x2

    if-ne v0, p1, :cond_5

    .line 89
    iget-boolean p1, p0, Lcom/android/settings/notification/zen/ZenModeSendersImagePreferenceController;->mIsMessages:Z

    if-eqz p1, :cond_4

    .line 90
    sget p1, Lcom/android/settings/R$drawable;->zen_messages_starred:I

    goto :goto_2

    .line 91
    :cond_4
    sget p1, Lcom/android/settings/R$drawable;->zen_calls_starred:I

    .line 92
    :goto_2
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->zen_mode_from_starred:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 94
    :cond_5
    iget-boolean p1, p0, Lcom/android/settings/notification/zen/ZenModeSendersImagePreferenceController;->mIsMessages:Z

    if-eqz p1, :cond_6

    .line 95
    sget p1, Lcom/android/settings/R$drawable;->zen_messages_none:I

    goto :goto_3

    .line 96
    :cond_6
    sget p1, Lcom/android/settings/R$drawable;->zen_calls_none:I

    .line 97
    :goto_3
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 98
    iget-boolean v1, p0, Lcom/android/settings/notification/zen/ZenModeSendersImagePreferenceController;->mIsMessages:Z

    if-eqz v1, :cond_7

    .line 99
    sget v1, Lcom/android/settings/R$string;->zen_mode_none_messages:I

    goto :goto_4

    .line 100
    :cond_7
    sget v1, Lcom/android/settings/R$string;->zen_mode_none_calls:I

    .line 98
    :goto_4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    :goto_5
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeSendersImagePreferenceController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSendersImagePreferenceController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
