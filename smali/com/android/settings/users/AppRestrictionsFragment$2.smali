.class Lcom/android/settings/users/AppRestrictionsFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$2;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment$2;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-static {p0, p2}, Lcom/android/settings/users/AppRestrictionsFragment;->access$200(Lcom/android/settings/users/AppRestrictionsFragment;Landroid/content/Intent;)V

    return-void
.end method
