.class Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$ScreenOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ContextualCardsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenOffReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$ScreenOffReceiver;->this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_2

    .line 199
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    invoke-static {}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->access$000()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "ContextualCardsFragment"

    const-string v0, "screen off"

    .line 204
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_1
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$ScreenOffReceiver;->this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;

    invoke-static {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->access$100(Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method
