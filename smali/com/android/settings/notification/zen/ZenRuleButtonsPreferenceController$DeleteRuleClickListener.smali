.class public Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$DeleteRuleClickListener;
.super Ljava/lang/Object;
.source "ZenRuleButtonsPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteRuleClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$DeleteRuleClickListener;->this$0:Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 100
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$DeleteRuleClickListener;->this$0:Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;->access$000(Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;)Landroidx/preference/PreferenceFragmentCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$DeleteRuleClickListener;->this$0:Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;->access$100(Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$DeleteRuleClickListener;->this$0:Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;

    invoke-static {v1}, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;->access$300(Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$DeleteRuleClickListener$1;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$DeleteRuleClickListener$1;-><init>(Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$DeleteRuleClickListener;)V

    invoke-static {p1, v0, v1, v2}, Lcom/android/settings/notification/zen/ZenDeleteRuleDialog;->show(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/notification/zen/ZenDeleteRuleDialog$PositiveClickListener;)V

    return-void
.end method
