.class public final synthetic Lcom/android/settings/wifi/tether/-$$Lambda$gcILfs-BNAxrC_fmlZxbsxqSkp8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/-$$Lambda$gcILfs-BNAxrC_fmlZxbsxqSkp8;->f$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    return-void
.end method


# virtual methods
.method public final onTetherConfigUpdated(Lcom/android/settings/core/BasePreferenceController;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/-$$Lambda$gcILfs-BNAxrC_fmlZxbsxqSkp8;->f$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->onTetherConfigUpdated(Lcom/android/settings/core/BasePreferenceController;)V

    return-void
.end method
