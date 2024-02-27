.class public Lj0/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lio/flutter/embedding/engine/a;

.field private final c:Ls0/c;

.field private final d:Lio/flutter/view/r;

.field private final e:Lio/flutter/plugin/platform/k;

.field private final f:Lj0/a$a;

.field private final g:Lio/flutter/embedding/engine/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/engine/a;Ls0/c;Lio/flutter/view/r;Lio/flutter/plugin/platform/k;Lj0/a$a;Lio/flutter/embedding/engine/d;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj0/a$b;->a:Landroid/content/Context;

    iput-object p2, p0, Lj0/a$b;->b:Lio/flutter/embedding/engine/a;

    iput-object p3, p0, Lj0/a$b;->c:Ls0/c;

    iput-object p4, p0, Lj0/a$b;->d:Lio/flutter/view/r;

    iput-object p5, p0, Lj0/a$b;->e:Lio/flutter/plugin/platform/k;

    iput-object p6, p0, Lj0/a$b;->f:Lj0/a$a;

    iput-object p7, p0, Lj0/a$b;->g:Lio/flutter/embedding/engine/d;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lj0/a$b;->a:Landroid/content/Context;

    return-object v0
.end method

.method public b()Ls0/c;
    .registers 2

    iget-object v0, p0, Lj0/a$b;->c:Ls0/c;

    return-object v0
.end method
