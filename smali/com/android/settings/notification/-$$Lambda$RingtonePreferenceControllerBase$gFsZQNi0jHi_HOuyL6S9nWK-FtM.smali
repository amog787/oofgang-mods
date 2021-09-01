.class public final synthetic Lcom/android/settings/notification/-$$Lambda$RingtonePreferenceControllerBase$gFsZQNi0jHi_HOuyL6S9nWK-FtM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$$Lambda$RingtonePreferenceControllerBase$gFsZQNi0jHi_HOuyL6S9nWK-FtM;->f$0:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/-$$Lambda$RingtonePreferenceControllerBase$gFsZQNi0jHi_HOuyL6S9nWK-FtM;->f$0:Landroidx/preference/Preference;

    invoke-static {p0}, Lcom/android/settings/notification/RingtonePreferenceControllerBase;->lambda$updateSummary$2(Landroidx/preference/Preference;)V

    return-void
.end method
