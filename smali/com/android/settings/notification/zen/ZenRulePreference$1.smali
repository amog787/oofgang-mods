.class Lcom/android/settings/notification/zen/ZenRulePreference$1;
.super Ljava/lang/Object;
.source "ZenRulePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/zen/ZenRulePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/ZenRulePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/ZenRulePreference;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference$1;->this$0:Lcom/android/settings/notification/zen/ZenRulePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRulePreference$1;->this$0:Lcom/android/settings/notification/zen/ZenRulePreference;

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenRulePreference;->access$000(Lcom/android/settings/notification/zen/ZenRulePreference;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
