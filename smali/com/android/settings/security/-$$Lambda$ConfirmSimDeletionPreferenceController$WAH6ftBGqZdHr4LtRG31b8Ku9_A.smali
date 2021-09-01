.class public final synthetic Lcom/android/settings/security/-$$Lambda$ConfirmSimDeletionPreferenceController$WAH6ftBGqZdHr4LtRG31b8Ku9_A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/security/ConfirmSimDeletionPreferenceController;

.field public final synthetic f$1:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/security/ConfirmSimDeletionPreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/security/-$$Lambda$ConfirmSimDeletionPreferenceController$WAH6ftBGqZdHr4LtRG31b8Ku9_A;->f$0:Lcom/android/settings/security/ConfirmSimDeletionPreferenceController;

    iput-object p2, p0, Lcom/android/settings/security/-$$Lambda$ConfirmSimDeletionPreferenceController$WAH6ftBGqZdHr4LtRG31b8Ku9_A;->f$1:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/security/-$$Lambda$ConfirmSimDeletionPreferenceController$WAH6ftBGqZdHr4LtRG31b8Ku9_A;->f$0:Lcom/android/settings/security/ConfirmSimDeletionPreferenceController;

    iget-object p0, p0, Lcom/android/settings/security/-$$Lambda$ConfirmSimDeletionPreferenceController$WAH6ftBGqZdHr4LtRG31b8Ku9_A;->f$1:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Lcom/android/settings/security/ConfirmSimDeletionPreferenceController;->lambda$onPreferenceChange$0$ConfirmSimDeletionPreferenceController(Landroidx/preference/Preference;)V

    return-void
.end method
