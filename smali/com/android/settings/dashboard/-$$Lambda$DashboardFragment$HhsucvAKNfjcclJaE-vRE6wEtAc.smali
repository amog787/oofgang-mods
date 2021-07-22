.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$HhsucvAKNfjcclJaE-vRE6wEtAc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$HhsucvAKNfjcclJaE-vRE6wEtAc;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$HhsucvAKNfjcclJaE-vRE6wEtAc;->f$0:I

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-static {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$onAttach$1(ILcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method
