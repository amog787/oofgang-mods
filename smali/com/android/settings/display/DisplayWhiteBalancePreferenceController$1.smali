.class Lcom/android/settings/display/DisplayWhiteBalancePreferenceController$1;
.super Landroid/database/ContentObserver;
.source "DisplayWhiteBalancePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/settings/display/DisplayWhiteBalancePreferenceController$1;->this$0:Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 75
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 76
    iget-object p0, p0, Lcom/android/settings/display/DisplayWhiteBalancePreferenceController$1;->this$0:Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;->updateVisibility()V

    return-void
.end method
