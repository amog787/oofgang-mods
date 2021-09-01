.class public Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "OpOtaConditionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController$Receiver;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 112
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.oem.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 113
    :cond_0
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController$Receiver;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;

    invoke-static {p0}, Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;->access$000(Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;)Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->onConditionChanged()V

    :cond_1
    return-void
.end method
