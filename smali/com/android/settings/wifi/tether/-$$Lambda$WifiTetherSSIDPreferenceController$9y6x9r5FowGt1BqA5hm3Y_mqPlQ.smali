.class public final synthetic Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSSIDPreferenceController$9y6x9r5FowGt1BqA5hm3Y_mqPlQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSSIDPreferenceController$9y6x9r5FowGt1BqA5hm3Y_mqPlQ;->f$0:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    iput-object p2, p0, Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSSIDPreferenceController$9y6x9r5FowGt1BqA5hm3Y_mqPlQ;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSSIDPreferenceController$9y6x9r5FowGt1BqA5hm3Y_mqPlQ;->f$0:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSSIDPreferenceController$9y6x9r5FowGt1BqA5hm3Y_mqPlQ;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->lambda$updateDisplay$0$WifiTetherSSIDPreferenceController(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method
