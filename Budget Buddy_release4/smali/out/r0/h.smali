.class public Lr0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr0/h$b;
    }
.end annotation


# instance fields
.field public final a:Ls0/j;

.field private b:Lr0/h$b;

.field private final c:Ls0/j$c;


# direct methods
.method public constructor <init>(Lf0/a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr0/h$a;

    invoke-direct {v0, p0}, Lr0/h$a;-><init>(Lr0/h;)V

    iput-object v0, p0, Lr0/h;->c:Ls0/j$c;

    new-instance v1, Ls0/j;

    sget-object v2, Ls0/q;->b:Ls0/q;

    const-string v3, "flutter/mousecursor"

    invoke-direct {v1, p1, v3, v2}, Ls0/j;-><init>(Ls0/c;Ljava/lang/String;Ls0/k;)V

    iput-object v1, p0, Lr0/h;->a:Ls0/j;

    invoke-virtual {v1, v0}, Ls0/j;->e(Ls0/j$c;)V

    return-void
.end method

.method static synthetic a(Lr0/h;)Lr0/h$b;
    .registers 1

    iget-object p0, p0, Lr0/h;->b:Lr0/h$b;

    return-object p0
.end method


# virtual methods
.method public b(Lr0/h$b;)V
    .registers 2

    iput-object p1, p0, Lr0/h;->b:Lr0/h$b;

    return-void
.end method
