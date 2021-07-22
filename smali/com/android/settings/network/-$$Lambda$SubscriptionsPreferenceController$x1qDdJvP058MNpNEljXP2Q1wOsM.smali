.class public final synthetic Lcom/android/settings/network/-$$Lambda$SubscriptionsPreferenceController$x1qDdJvP058MNpNEljXP2Q1wOsM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/SubscriptionsPreferenceController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/SubscriptionsPreferenceController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/-$$Lambda$SubscriptionsPreferenceController$x1qDdJvP058MNpNEljXP2Q1wOsM;->f$0:Lcom/android/settings/network/SubscriptionsPreferenceController;

    iput p2, p0, Lcom/android/settings/network/-$$Lambda$SubscriptionsPreferenceController$x1qDdJvP058MNpNEljXP2Q1wOsM;->f$1:I

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/-$$Lambda$SubscriptionsPreferenceController$x1qDdJvP058MNpNEljXP2Q1wOsM;->f$0:Lcom/android/settings/network/SubscriptionsPreferenceController;

    iget p0, p0, Lcom/android/settings/network/-$$Lambda$SubscriptionsPreferenceController$x1qDdJvP058MNpNEljXP2Q1wOsM;->f$1:I

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/network/SubscriptionsPreferenceController;->lambda$update$0$SubscriptionsPreferenceController(ILandroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
