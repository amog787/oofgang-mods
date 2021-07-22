.class Lcom/android/settings/PointerSpeedPreference$1;
.super Landroid/database/ContentObserver;
.source "PointerSpeedPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PointerSpeedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PointerSpeedPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/PointerSpeedPreference;Landroid/os/Handler;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/settings/PointerSpeedPreference$1;->this$0:Lcom/android/settings/PointerSpeedPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/PointerSpeedPreference$1;->this$0:Lcom/android/settings/PointerSpeedPreference;

    invoke-static {p0}, Lcom/android/settings/PointerSpeedPreference;->access$000(Lcom/android/settings/PointerSpeedPreference;)V

    return-void
.end method
