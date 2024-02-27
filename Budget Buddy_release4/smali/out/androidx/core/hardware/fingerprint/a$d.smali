.class public final Landroidx/core/hardware/fingerprint/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/hardware/fingerprint/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private final a:Landroidx/core/hardware/fingerprint/a$e;


# direct methods
.method public constructor <init>(Landroidx/core/hardware/fingerprint/a$e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/hardware/fingerprint/a$d;->a:Landroidx/core/hardware/fingerprint/a$e;

    return-void
.end method


# virtual methods
.method public a()Landroidx/core/hardware/fingerprint/a$e;
    .registers 2

    iget-object v0, p0, Landroidx/core/hardware/fingerprint/a$d;->a:Landroidx/core/hardware/fingerprint/a$e;

    return-object v0
.end method
