.class public final synthetic Lcom/android/settings/notification/app/-$$Lambda$ChannelListPreferenceController$PLvfA3g4OWDxkdAt44EkWT5JVd4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/app/ChannelListPreferenceController;

.field public final synthetic f$1:Landroid/app/NotificationChannel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/app/ChannelListPreferenceController;Landroid/app/NotificationChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/app/-$$Lambda$ChannelListPreferenceController$PLvfA3g4OWDxkdAt44EkWT5JVd4;->f$0:Lcom/android/settings/notification/app/ChannelListPreferenceController;

    iput-object p2, p0, Lcom/android/settings/notification/app/-$$Lambda$ChannelListPreferenceController$PLvfA3g4OWDxkdAt44EkWT5JVd4;->f$1:Landroid/app/NotificationChannel;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/app/-$$Lambda$ChannelListPreferenceController$PLvfA3g4OWDxkdAt44EkWT5JVd4;->f$0:Lcom/android/settings/notification/app/ChannelListPreferenceController;

    iget-object p0, p0, Lcom/android/settings/notification/app/-$$Lambda$ChannelListPreferenceController$PLvfA3g4OWDxkdAt44EkWT5JVd4;->f$1:Landroid/app/NotificationChannel;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->lambda$populateSingleChannelPrefs$1$ChannelListPreferenceController(Landroid/app/NotificationChannel;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
