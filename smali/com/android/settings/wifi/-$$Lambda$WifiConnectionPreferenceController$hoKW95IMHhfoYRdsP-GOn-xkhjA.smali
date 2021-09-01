.class public final synthetic Lcom/android/settings/wifi/-$$Lambda$WifiConnectionPreferenceController$hoKW95IMHhfoYRdsP-GOn-xkhjA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/WifiConnectionPreferenceController;

.field public final synthetic f$1:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/WifiConnectionPreferenceController;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/-$$Lambda$WifiConnectionPreferenceController$hoKW95IMHhfoYRdsP-GOn-xkhjA;->f$0:Lcom/android/settings/wifi/WifiConnectionPreferenceController;

    iput-object p2, p0, Lcom/android/settings/wifi/-$$Lambda$WifiConnectionPreferenceController$hoKW95IMHhfoYRdsP-GOn-xkhjA;->f$1:Lcom/android/wifitrackerlib/WifiEntry;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/-$$Lambda$WifiConnectionPreferenceController$hoKW95IMHhfoYRdsP-GOn-xkhjA;->f$0:Lcom/android/settings/wifi/WifiConnectionPreferenceController;

    iget-object p0, p0, Lcom/android/settings/wifi/-$$Lambda$WifiConnectionPreferenceController$hoKW95IMHhfoYRdsP-GOn-xkhjA;->f$1:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->lambda$updatePreference$0$WifiConnectionPreferenceController(Lcom/android/wifitrackerlib/WifiEntry;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
