.class public final synthetic Lcom/android/settings/notification/-$$Lambda$SoundSettings$N7fFCKwOwYJug19RG1Wew_H_2JM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioSwitchCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/SoundSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$$Lambda$SoundSettings$N7fFCKwOwYJug19RG1Wew_H_2JM;->f$0:Lcom/android/settings/notification/SoundSettings;

    return-void
.end method


# virtual methods
.method public final onPreferenceDataChanged(Landroidx/preference/ListPreference;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/-$$Lambda$SoundSettings$N7fFCKwOwYJug19RG1Wew_H_2JM;->f$0:Lcom/android/settings/notification/SoundSettings;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/SoundSettings;->lambda$onAttach$0$SoundSettings(Landroidx/preference/ListPreference;)V

    return-void
.end method
