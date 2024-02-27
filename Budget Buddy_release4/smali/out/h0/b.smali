.class public final Lh0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_7

    const-string p1, "libapp.so"

    :cond_7
    iput-object p1, p0, Lh0/b;->a:Ljava/lang/String;

    if-nez p2, :cond_d

    const-string p2, "vm_snapshot_data"

    :cond_d
    iput-object p2, p0, Lh0/b;->b:Ljava/lang/String;

    if-nez p3, :cond_13

    const-string p3, "isolate_snapshot_data"

    :cond_13
    iput-object p3, p0, Lh0/b;->c:Ljava/lang/String;

    if-nez p4, :cond_19

    const-string p4, "flutter_assets"

    :cond_19
    iput-object p4, p0, Lh0/b;->d:Ljava/lang/String;

    iput-object p6, p0, Lh0/b;->f:Ljava/lang/String;

    if-nez p5, :cond_21

    const-string p5, ""

    :cond_21
    iput-object p5, p0, Lh0/b;->e:Ljava/lang/String;

    iput-boolean p7, p0, Lh0/b;->g:Z

    return-void
.end method
