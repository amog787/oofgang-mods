.class public final synthetic Lcom/android/settings/notification/app/-$$Lambda$AppChannelsBypassingDndPreferenceController$-E15JWGyR44xiadvzpg3gNkL7qs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/app/-$$Lambda$AppChannelsBypassingDndPreferenceController$-E15JWGyR44xiadvzpg3gNkL7qs;->f$0:Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;

    iput-object p2, p0, Lcom/android/settings/notification/app/-$$Lambda$AppChannelsBypassingDndPreferenceController$-E15JWGyR44xiadvzpg3gNkL7qs;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/app/-$$Lambda$AppChannelsBypassingDndPreferenceController$-E15JWGyR44xiadvzpg3gNkL7qs;->f$0:Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;

    iget-object p0, p0, Lcom/android/settings/notification/app/-$$Lambda$AppChannelsBypassingDndPreferenceController$-E15JWGyR44xiadvzpg3gNkL7qs;->f$1:Landroid/os/Bundle;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->lambda$populateList$0$AppChannelsBypassingDndPreferenceController(Landroid/os/Bundle;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
