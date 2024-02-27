.class public Lr0/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr0/o$b;
    }
.end annotation


# instance fields
.field public final a:Ls0/j;

.field private b:Lr0/o$b;

.field public final c:Ls0/j$c;


# direct methods
.method public constructor <init>(Lf0/a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr0/o$a;

    invoke-direct {v0, p0}, Lr0/o$a;-><init>(Lr0/o;)V

    iput-object v0, p0, Lr0/o;->c:Ls0/j$c;

    new-instance v1, Ls0/j;

    sget-object v2, Ls0/q;->b:Ls0/q;

    const-string v3, "flutter/spellcheck"

    invoke-direct {v1, p1, v3, v2}, Ls0/j;-><init>(Ls0/c;Ljava/lang/String;Ls0/k;)V

    iput-object v1, p0, Lr0/o;->a:Ls0/j;

    invoke-virtual {v1, v0}, Ls0/j;->e(Ls0/j$c;)V

    return-void
.end method

.method static synthetic a(Lr0/o;)Lr0/o$b;
    .registers 1

    iget-object p0, p0, Lr0/o;->b:Lr0/o$b;

    return-object p0
.end method


# virtual methods
.method public b(Lr0/o$b;)V
    .registers 2

    iput-object p1, p0, Lr0/o;->b:Lr0/o$b;

    return-void
.end method
