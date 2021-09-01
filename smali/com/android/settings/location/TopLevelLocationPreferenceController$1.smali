.class Lcom/android/settings/location/TopLevelLocationPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "TopLevelLocationPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/TopLevelLocationPreferenceController;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/TopLevelLocationPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/location/TopLevelLocationPreferenceController;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController$1;->this$0:Lcom/android/settings/location/TopLevelLocationPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/settings/location/TopLevelLocationPreferenceController$1;->this$0:Lcom/android/settings/location/TopLevelLocationPreferenceController;

    invoke-static {p0}, Lcom/android/settings/location/TopLevelLocationPreferenceController;->access$000(Lcom/android/settings/location/TopLevelLocationPreferenceController;)V

    return-void
.end method
