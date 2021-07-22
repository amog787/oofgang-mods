.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$cFFmLzl_a556_FbliTJesDjyJUw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/dashboard/DashboardFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$cFFmLzl_a556_FbliTJesDjyJUw;->f$0:Lcom/android/settings/dashboard/DashboardFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$cFFmLzl_a556_FbliTJesDjyJUw;->f$0:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$checkUiBlocker$3$DashboardFragment()V

    return-void
.end method
