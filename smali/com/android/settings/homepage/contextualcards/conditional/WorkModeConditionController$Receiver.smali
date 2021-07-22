.class public Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "WorkModeConditionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController$Receiver;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 130
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 131
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 132
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 133
    :cond_0
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController$Receiver;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;

    invoke-static {p0}, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;->access$000(Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;)Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->onConditionChanged()V

    :cond_1
    return-void
.end method
