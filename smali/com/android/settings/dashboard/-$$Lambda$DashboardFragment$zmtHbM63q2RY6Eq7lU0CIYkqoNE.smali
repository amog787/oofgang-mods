.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$zmtHbM63q2RY6Eq7lU0CIYkqoNE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$zmtHbM63q2RY6Eq7lU0CIYkqoNE;->f$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$zmtHbM63q2RY6Eq7lU0CIYkqoNE;->f$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    check-cast p1, Lcom/android/settings/core/BasePreferenceController;

    invoke-static {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$onAttach$0(Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/core/BasePreferenceController;)V

    return-void
.end method
