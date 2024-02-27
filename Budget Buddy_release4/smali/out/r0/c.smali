.class public final synthetic Lr0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/a$e;


# instance fields
.field public final synthetic a:Lr0/d$a;


# direct methods
.method public synthetic constructor <init>(Lr0/d$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/c;->a:Lr0/d$a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lr0/c;->a:Lr0/d$a;

    invoke-static {v0, p1}, Lr0/d;->a(Lr0/d$a;Ljava/lang/Object;)V

    return-void
.end method
