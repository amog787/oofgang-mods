.class public final synthetic Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$H7KKd-hXnJyt8cAynwhTjk_QZk0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$H7KKd-hXnJyt8cAynwhTjk_QZk0;->f$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    iput-object p2, p0, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$H7KKd-hXnJyt8cAynwhTjk_QZk0;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$H7KKd-hXnJyt8cAynwhTjk_QZk0;->f$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    iget-object p0, p0, Lcom/android/settings/wifi/details/-$$Lambda$WifiDetailPreferenceController$H7KKd-hXnJyt8cAynwhTjk_QZk0;->f$1:Landroid/net/Uri;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->lambda$updateCaptivePortalButton$4$WifiDetailPreferenceController(Landroid/net/Uri;Landroid/view/View;)V

    return-void
.end method
