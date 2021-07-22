.class public Lcom/android/settings/sound/VibrateForCallsPreferenceFragment;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "VibrateForCallsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;
    }
.end annotation


# static fields
.field static final KEY_ALWAYS_VIBRATE:Ljava/lang/String; = "always_vibrate"

.field static final KEY_NEVER_VIBRATE:Ljava/lang/String; = "never_vibrate"

.field static final KEY_RAMPING_RINGER:Ljava/lang/String; = "ramping_ringer"


# instance fields
.field private final mCandidates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    .line 55
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/sound/VibrateForCallsPreferenceFragment;->mCandidates:Ljava/util/Map;

    return-void
.end method

.method private loadCandidates(Landroid/content/Context;)V
    .locals 3

    .line 65
    iget-object p1, p0, Lcom/android/settings/sound/VibrateForCallsPreferenceFragment;->mCandidates:Ljava/util/Map;

    new-instance v0, Lcom/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;

    sget v1, Lcom/android/settings/R$string;->vibrate_when_ringing_option_never_vibrate:I

    const-string v2, "never_vibrate"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;-><init>(Lcom/android/settings/sound/VibrateForCallsPreferenceFragment;Ljava/lang/String;I)V

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object p1, p0, Lcom/android/settings/sound/VibrateForCallsPreferenceFragment;->mCandidates:Ljava/util/Map;

    new-instance v0, Lcom/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;

    sget v1, Lcom/android/settings/R$string;->vibrate_when_ringing_option_always_vibrate:I

    const-string v2, "always_vibrate"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;-><init>(Lcom/android/settings/sound/VibrateForCallsPreferenceFragment;Ljava/lang/String;I)V

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object p1, p0, Lcom/android/settings/sound/VibrateForCallsPreferenceFragment;->mCandidates:Ljava/util/Map;

    new-instance v0, Lcom/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;

    sget v1, Lcom/android/settings/R$string;->vibrate_when_ringing_option_ramping_ringer:I

    const-string v2, "ramping_ringer"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;-><init>(Lcom/android/settings/sound/VibrateForCallsPreferenceFragment;Ljava/lang/String;I)V

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updateSettings(Lcom/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;)V
    .locals 5

    .line 77
    invoke-virtual {p1}, Lcom/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "always_vibrate"

    .line 78
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "apply_ramping_ringer"

    const-string/jumbo v3, "vibrate_when_ringing"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 79
    invoke-static {p1, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 81
    invoke-static {p0, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    const-string v0, "ramping_ringer"

    .line 83
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 84
    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 86
    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 89
    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 91
    invoke-static {p0, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    iget-object v1, p0, Lcom/android/settings/sound/VibrateForCallsPreferenceFragment;->mCandidates:Ljava/util/Map;

    const-string v2, "never_vibrate"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v1, p0, Lcom/android/settings/sound/VibrateForCallsPreferenceFragment;->mCandidates:Ljava/util/Map;

    const-string v2, "always_vibrate"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object p0, p0, Lcom/android/settings/sound/VibrateForCallsPreferenceFragment;->mCandidates:Ljava/util/Map;

    const-string v1, "ramping_ringer"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 3

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "apply_ramping_ringer"

    const/4 v2, 0x0

    .line 107
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string p0, "ramping_ringer"

    return-object p0

    .line 112
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "vibrate_when_ringing"

    .line 111
    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_1

    const-string p0, "always_vibrate"

    return-object p0

    :cond_1
    const-string p0, "never_vibrate"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x723

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 133
    sget p0, Lcom/android/settings/R$xml;->vibrate_for_calls_settings:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/sound/VibrateForCallsPreferenceFragment;->loadCandidates(Landroid/content/Context;)V

    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/settings/sound/VibrateForCallsPreferenceFragment;->mCandidates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;

    if-nez v0, :cond_0

    .line 124
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown vibrate for calls candidate (key = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VibrateForCallsPreferenceFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 127
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/sound/VibrateForCallsPreferenceFragment;->updateSettings(Lcom/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;)V

    const/4 p0, 0x1

    return p0
.end method
