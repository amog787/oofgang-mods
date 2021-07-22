.class Lcom/android/settings/development/qstile/DevelopmentTiles$WirelessDebugging$1;
.super Landroid/database/ContentObserver;
.source "DevelopmentTiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/qstile/DevelopmentTiles$WirelessDebugging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/qstile/DevelopmentTiles$WirelessDebugging;


# direct methods
.method constructor <init>(Lcom/android/settings/development/qstile/DevelopmentTiles$WirelessDebugging;Landroid/os/Handler;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WirelessDebugging$1;->this$0:Lcom/android/settings/development/qstile/DevelopmentTiles$WirelessDebugging;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WirelessDebugging$1;->this$0:Lcom/android/settings/development/qstile/DevelopmentTiles$WirelessDebugging;

    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;->refresh()V

    return-void
.end method
