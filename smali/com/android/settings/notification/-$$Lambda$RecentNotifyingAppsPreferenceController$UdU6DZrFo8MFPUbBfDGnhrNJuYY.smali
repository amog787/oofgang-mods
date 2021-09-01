.class public final synthetic Lcom/android/settings/notification/-$$Lambda$RecentNotifyingAppsPreferenceController$UdU6DZrFo8MFPUbBfDGnhrNJuYY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$$Lambda$RecentNotifyingAppsPreferenceController$UdU6DZrFo8MFPUbBfDGnhrNJuYY;->f$0:Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;

    iput-object p2, p0, Lcom/android/settings/notification/-$$Lambda$RecentNotifyingAppsPreferenceController$UdU6DZrFo8MFPUbBfDGnhrNJuYY;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/notification/-$$Lambda$RecentNotifyingAppsPreferenceController$UdU6DZrFo8MFPUbBfDGnhrNJuYY;->f$2:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/-$$Lambda$RecentNotifyingAppsPreferenceController$UdU6DZrFo8MFPUbBfDGnhrNJuYY;->f$0:Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;

    iget-object v1, p0, Lcom/android/settings/notification/-$$Lambda$RecentNotifyingAppsPreferenceController$UdU6DZrFo8MFPUbBfDGnhrNJuYY;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/notification/-$$Lambda$RecentNotifyingAppsPreferenceController$UdU6DZrFo8MFPUbBfDGnhrNJuYY;->f$2:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->lambda$displayRecentApps$1$RecentNotifyingAppsPreferenceController(Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
