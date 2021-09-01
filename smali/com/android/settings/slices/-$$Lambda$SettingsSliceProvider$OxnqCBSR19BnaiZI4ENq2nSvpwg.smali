.class public final synthetic Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$OxnqCBSR19BnaiZI4ENq2nSvpwg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/slices/SettingsSliceProvider;

.field public final synthetic f$1:Lcom/android/settings/slices/CustomSliceable;

.field public final synthetic f$2:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/slices/SettingsSliceProvider;Lcom/android/settings/slices/CustomSliceable;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$OxnqCBSR19BnaiZI4ENq2nSvpwg;->f$0:Lcom/android/settings/slices/SettingsSliceProvider;

    iput-object p2, p0, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$OxnqCBSR19BnaiZI4ENq2nSvpwg;->f$1:Lcom/android/settings/slices/CustomSliceable;

    iput-object p3, p0, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$OxnqCBSR19BnaiZI4ENq2nSvpwg;->f$2:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$OxnqCBSR19BnaiZI4ENq2nSvpwg;->f$0:Lcom/android/settings/slices/SettingsSliceProvider;

    iget-object v1, p0, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$OxnqCBSR19BnaiZI4ENq2nSvpwg;->f$1:Lcom/android/settings/slices/CustomSliceable;

    iget-object p0, p0, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$OxnqCBSR19BnaiZI4ENq2nSvpwg;->f$2:Landroid/net/Uri;

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/slices/SettingsSliceProvider;->lambda$onSlicePinned$0$SettingsSliceProvider(Lcom/android/settings/slices/CustomSliceable;Landroid/net/Uri;)V

    return-void
.end method
