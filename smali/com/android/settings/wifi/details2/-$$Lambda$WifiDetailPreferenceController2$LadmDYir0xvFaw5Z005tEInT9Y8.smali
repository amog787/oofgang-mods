.class public final synthetic Lcom/android/settings/wifi/details2/-$$Lambda$WifiDetailPreferenceController2$LadmDYir0xvFaw5Z005tEInT9Y8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/details2/-$$Lambda$WifiDetailPreferenceController2$LadmDYir0xvFaw5Z005tEInT9Y8;->f$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    iput-object p2, p0, Lcom/android/settings/wifi/details2/-$$Lambda$WifiDetailPreferenceController2$LadmDYir0xvFaw5Z005tEInT9Y8;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details2/-$$Lambda$WifiDetailPreferenceController2$LadmDYir0xvFaw5Z005tEInT9Y8;->f$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/-$$Lambda$WifiDetailPreferenceController2$LadmDYir0xvFaw5Z005tEInT9Y8;->f$1:Landroid/net/Uri;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->lambda$updateCaptivePortalButton$5$WifiDetailPreferenceController2(Landroid/net/Uri;Landroid/view/View;)V

    return-void
.end method
