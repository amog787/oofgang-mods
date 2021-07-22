.class public final synthetic Lcom/android/settings/wifi/-$$Lambda$WifiSettings$dvoN6ah4HmI5buWC6GAjN7HS4rw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/WifiSettings;

.field public final synthetic f$1:Lcom/android/settings/wifi/ConnectedAccessPointPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$dvoN6ah4HmI5buWC6GAjN7HS4rw;->f$0:Lcom/android/settings/wifi/WifiSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$dvoN6ah4HmI5buWC6GAjN7HS4rw;->f$1:Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$dvoN6ah4HmI5buWC6GAjN7HS4rw;->f$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object p0, p0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$dvoN6ah4HmI5buWC6GAjN7HS4rw;->f$1:Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/wifi/WifiSettings;->lambda$addConnectedAccessPointPreference$2$WifiSettings(Lcom/android/settings/wifi/ConnectedAccessPointPreference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
