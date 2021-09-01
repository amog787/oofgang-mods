.class public final synthetic Lcom/android/settings/development/-$$Lambda$SystemServerHeapDumpPreferenceController$Fhld5TgsiVSS7TULvKwalLKSHQ0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/-$$Lambda$SystemServerHeapDumpPreferenceController$Fhld5TgsiVSS7TULvKwalLKSHQ0;->f$0:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/development/-$$Lambda$SystemServerHeapDumpPreferenceController$Fhld5TgsiVSS7TULvKwalLKSHQ0;->f$0:Landroidx/preference/Preference;

    invoke-static {p0}, Lcom/android/settings/development/SystemServerHeapDumpPreferenceController;->lambda$handlePreferenceTreeClick$0(Landroidx/preference/Preference;)V

    return-void
.end method
