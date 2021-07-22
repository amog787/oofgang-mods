.class public final synthetic Lcom/android/settings/notification/-$$Lambda$RingtonePreferenceControllerBase$Y95tp89vC8fk0DlynP4A12MKPAU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/RingtonePreferenceControllerBase;

.field public final synthetic f$1:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/RingtonePreferenceControllerBase;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$$Lambda$RingtonePreferenceControllerBase$Y95tp89vC8fk0DlynP4A12MKPAU;->f$0:Lcom/android/settings/notification/RingtonePreferenceControllerBase;

    iput-object p2, p0, Lcom/android/settings/notification/-$$Lambda$RingtonePreferenceControllerBase$Y95tp89vC8fk0DlynP4A12MKPAU;->f$1:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/-$$Lambda$RingtonePreferenceControllerBase$Y95tp89vC8fk0DlynP4A12MKPAU;->f$0:Lcom/android/settings/notification/RingtonePreferenceControllerBase;

    iget-object p0, p0, Lcom/android/settings/notification/-$$Lambda$RingtonePreferenceControllerBase$Y95tp89vC8fk0DlynP4A12MKPAU;->f$1:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/RingtonePreferenceControllerBase;->lambda$updateState$0$RingtonePreferenceControllerBase(Landroidx/preference/Preference;)V

    return-void
.end method
