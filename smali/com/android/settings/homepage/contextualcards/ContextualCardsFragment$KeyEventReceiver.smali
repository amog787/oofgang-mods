.class Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$KeyEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ContextualCardsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$KeyEventReceiver;->this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_3

    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "reason"

    .line 178
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "recentapps"

    .line 179
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "homekey"

    .line 180
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 184
    :cond_1
    invoke-static {}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key pressed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ContextualCardsFragment"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_2
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$KeyEventReceiver;->this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;

    invoke-static {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->access$100(Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;Landroid/content/Context;)V

    :cond_3
    :goto_0
    return-void
.end method
