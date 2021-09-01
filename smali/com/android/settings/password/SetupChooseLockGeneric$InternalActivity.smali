.class public Lcom/android/settings/password/SetupChooseLockGeneric$InternalActivity;
.super Lcom/android/settings/password/ChooseLockGeneric$InternalActivity;
.source "SetupChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/SetupChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalActivity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/SetupChooseLockGeneric$InternalActivity$InternalSetupChooseLockGenericFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$InternalActivity;-><init>()V

    return-void
.end method


# virtual methods
.method getFragmentClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 259
    const-class p0, Lcom/android/settings/password/SetupChooseLockGeneric$InternalActivity$InternalSetupChooseLockGenericFragment;

    return-object p0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 0

    .line 254
    const-class p0, Lcom/android/settings/password/SetupChooseLockGeneric$InternalActivity$InternalSetupChooseLockGenericFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
