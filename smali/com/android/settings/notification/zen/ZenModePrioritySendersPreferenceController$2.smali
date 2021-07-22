.class Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController$2;
.super Ljava/lang/Object;
.source "ZenModePrioritySendersPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->getWidgetClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController$2;->this$0:Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;

    iput-object p2, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController$2;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 221
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController$2;->val$key:Ljava/lang/String;

    const-string v0, "senders_starred_contacts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 222
    invoke-static {}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->access$400()Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController$2;->this$0:Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;

    invoke-static {v0}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->access$300(Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 223
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController$2;->this$0:Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;

    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->access$500(Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->access$400()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 224
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController$2;->val$key:Ljava/lang/String;

    const-string v0, "senders_contacts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 225
    invoke-static {}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->access$600()Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController$2;->this$0:Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;

    invoke-static {v0}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->access$300(Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 226
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController$2;->this$0:Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;

    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->access$700(Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->access$600()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 228
    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController$2;->this$0:Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;

    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->access$900(Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->access$800()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
