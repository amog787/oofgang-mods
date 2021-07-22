.class Lcom/android/settings/development/DSUTermsOfServiceActivity$1;
.super Ljava/lang/Object;
.source "DSUTermsOfServiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/DSUTermsOfServiceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/DSUTermsOfServiceActivity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/settings/development/DSUTermsOfServiceActivity;Landroid/content/Intent;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/settings/development/DSUTermsOfServiceActivity$1;->this$0:Lcom/android/settings/development/DSUTermsOfServiceActivity;

    iput-object p2, p0, Lcom/android/settings/development/DSUTermsOfServiceActivity$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/android/settings/development/DSUTermsOfServiceActivity$1;->this$0:Lcom/android/settings/development/DSUTermsOfServiceActivity;

    iget-object p0, p0, Lcom/android/settings/development/DSUTermsOfServiceActivity$1;->val$intent:Landroid/content/Intent;

    invoke-static {p1, p0}, Lcom/android/settings/development/DSUTermsOfServiceActivity;->access$000(Lcom/android/settings/development/DSUTermsOfServiceActivity;Landroid/content/Intent;)V

    return-void
.end method
