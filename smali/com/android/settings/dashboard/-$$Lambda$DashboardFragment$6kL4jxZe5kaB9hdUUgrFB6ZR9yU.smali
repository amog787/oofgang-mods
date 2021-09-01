.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$6kL4jxZe5kaB9hdUUgrFB6ZR9yU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/dashboard/DashboardFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$6kL4jxZe5kaB9hdUUgrFB6ZR9yU;->f$0:Lcom/android/settings/dashboard/DashboardFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$6kL4jxZe5kaB9hdUUgrFB6ZR9yU;->f$0:Lcom/android/settings/dashboard/DashboardFragment;

    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$onCreatePreferences$5$DashboardFragment(Landroidx/preference/Preference;)V

    return-void
.end method
